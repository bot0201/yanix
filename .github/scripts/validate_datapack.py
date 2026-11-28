#!/usr/bin/env python3
"""yanix 数据包静态校验。

校验内容：
1. 所有 .json / .mcmeta 文件是否为合法 JSON。
2. 所有 .mcfunction 中 function <ns>:<path> / function #<ns>:<tag> 引用是否存在。
3. 所有函数标签（tags/function/*.json）values 中引用的函数/标签是否存在。

用法：
    python .github/scripts/validate_datapack.py

退出码：0 = 通过；1 = 发现错误。
"""
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "yanix" / "data"
PACKS = (ROOT / "yanix", ROOT / "yanix_resourcepack")

# function 命令引用：# 前缀表示函数标签，否则为函数
# 路径组放宽到非空白字符，以便识别宏变量 $(...) 后再跳过动态路径
FUNCTION_REF = re.compile(r"function\s+(#?)([a-z0-9_.\-]+):([^\s\\{]+)")
SCHEDULE_REF = re.compile(r"schedule\s+function\s+([a-z0-9_.\-]+):([^\s]+)")

# 视为外部（原版）提供的命名空间，跳过存在性检查
EXTERNAL_NAMESPACES = {"minecraft"}

errors: list[str] = []


def error(msg: str) -> None:
    errors.append(msg)


def rel(path: Path) -> str:
    return str(path.relative_to(ROOT))


def resolve_function(namespace: str, path: str) -> Path | None:
    f = DATA / namespace / "function" / f"{path}.mcfunction"
    return f if f.is_file() else None


def resolve_tag(namespace: str, path: str) -> Path | None:
    t = DATA / namespace / "tags" / "function" / f"{path}.json"
    return t if t.is_file() else None


def check_json_validity() -> None:
    for base in PACKS:
        if not base.is_dir():
            continue
        for path in sorted(base.rglob("*")):
            if path.suffix not in (".json", ".mcmeta"):
                continue
            try:
                json.loads(path.read_text(encoding="utf-8"))
            except json.JSONDecodeError as exc:
                error(f"[JSON] {rel(path)}: {exc}")


def check_function_refs() -> None:
    for path in sorted(DATA.rglob("*.mcfunction")):
        for lineno, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
            if line.lstrip().startswith("#"):
                continue  # 整行注释
            for m in FUNCTION_REF.finditer(line):
                is_tag = m.group(1) == "#"
                namespace, ref_path = m.group(2), m.group(3)
                if "$(" in ref_path:
                    continue  # 宏变量动态路径，无法静态校验
                if namespace in EXTERNAL_NAMESPACES:
                    continue
                target = (
                    resolve_tag(namespace, ref_path)
                    if is_tag
                    else resolve_function(namespace, ref_path)
                )
                if target is None:
                    kind = "函数标签" if is_tag else "函数"
                    error(
                        f"[引用] {rel(path)}:{lineno} 调用了不存在的{kind} "
                        f"{'#' if is_tag else ''}{namespace}:{ref_path}"
                    )


def check_schedule_refs() -> None:
    for path in sorted(DATA.rglob("*.mcfunction")):
        for lineno, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
            if line.lstrip().startswith("#"):
                continue  # 整行注释
            for m in SCHEDULE_REF.finditer(line):
                namespace, ref_path = m.group(1), m.group(2)
                if namespace in EXTERNAL_NAMESPACES:
                    continue
                if resolve_function(namespace, ref_path) is None:
                    error(
                        f"[调度] {rel(path)}:{lineno} schedule 了不存在的函数 "
                        f"{namespace}:{ref_path}"
                    )


def is_function_tag(path: Path) -> bool:
    parts = path.relative_to(DATA).parts
    return len(parts) >= 4 and parts[1] == "tags" and parts[2] == "function"


def check_function_tag_values() -> None:
    for path in sorted(DATA.rglob("*.json")):
        if not is_function_tag(path):
            continue
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
        except json.JSONDecodeError:
            continue  # 已在 JSON 校验中报告
        values = data.get("values")
        if not isinstance(values, list):
            continue
        for value in values:
            if isinstance(value, dict):
                if value.get("required") is False:
                    continue  # required: false，函数缺失时原版不报错
                value = value.get("function")  # 1.21.3+ 的 {"function": "...", "required": false}
            if not isinstance(value, str) or ":" not in value:
                continue
            is_tag = value.startswith("#")
            ref = value[1:] if is_tag else value
            namespace, ref_path = ref.split(":", 1)
            if namespace in EXTERNAL_NAMESPACES:
                continue
            target = (
                resolve_tag(namespace, ref_path)
                if is_tag
                else resolve_function(namespace, ref_path)
            )
            if target is None:
                kind = "函数标签" if is_tag else "函数"
                error(f"[标签] {rel(path)} 引用了不存在的{kind} {value}")


def main() -> int:
    check_json_validity()
    check_function_refs()
    check_function_tag_values()
    check_schedule_refs()

    if errors:
        print(f"发现 {len(errors)} 个问题：", file=sys.stderr)
        for e in errors:
            print(f"  - {e}", file=sys.stderr)
        return 1

    print("校验通过：JSON 合法，所有函数/标签引用均存在。")
    return 0


if __name__ == "__main__":
    sys.exit(main())
