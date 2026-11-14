# 附属数据包 API 使用手册

> 让第三方数据包无需修改 yanix 核心执行流即可接入生命周期与 trigger 处理。

## 简介

yanix 通过**原版函数标签**的跨数据包合并机制，向外部数据包暴露 4 个生命周期钩子；同时提供 3 个 trigger 宏，封装了项目通用的「注册 → enable → 检测 → 业务 → 重置」流程。

附属包作者只需编写自己的函数，并将自己的函数路径写进对应的函数标签 JSON 中，即可在不触碰 yanix 源码的前提下接入。

## 生命周期钩子（4 个函数标签）

| 函数标签 | 执行时机 | 典型用途 |
|---------|---------|---------|
| `#main:affiliated/init` | yanix 全部核心模块 init 完成后，服务器启动时执行一次 | 注册 trigger、初始化计分板 |
| `#main:affiliated/tick_1` | 每 1 tick | 高频逻辑（射击、射线检测） |
| `#main:affiliated/tick_2` | 每 2 tick | 常规逻辑 |
| `#main:affiliated/tick_3` | 每 3 tick | 低频逻辑（UI 刷新、统计） |

### 如何接入

在你的数据包中创建同名标签文件，把你的函数路径加进去即可（原版会自动合并同名标签）：

```json
{
    "values": [
        "your_pack:init"
    ]
}
```

> 标签值为空时静默无操作，无需担心重复加载或报错。

## trigger 助手（3 个宏）

封装了项目通用的 trigger 处理流程，附属包无需重复编写原生 `scoreboard` 命令。

### 1. 注册 `main:affiliated/trigger/register`

在 `init` 钩子中调用，创建 `trigger` 类型的计分板。

```mcfunction
function main:affiliated/trigger/register {objective:"foo_buy"}
```

参数：

- `objective`：计分板目标名（`trigger` 类型）

### 2. 处理 `main:affiliated/trigger/handle`

在 tick 钩子（建议 `tick_2`）中周期性调用，负责 `enable @a`、检测值 `1..`、分发到业务函数。

```mcfunction
function main:affiliated/trigger/handle {objective:"foo_buy", handler:"your_pack:buy/handler"}
```

参数：

- `objective`：计分板目标名
- `handler`：触发后执行的业务函数路径

### 3. 子处理器 `main:affiliated/trigger/handle_child`（内部实现）

由 `handle` 自动调用，执行业务函数并重置触发值为 0，一般无需手动调用。

**约定**：

- 业务函数以 `as @s`（触发玩家）身份执行。
- 业务函数**无需**自行重置 trigger 值，helper 已代为重置为 0。

## 完整示例：购买道具 trigger

1. 附属包 `init` 钩子注册：

```mcfunction
# your_pack:init（已写入 #main:affiliated/init 标签）
function main:affiliated/trigger/register {objective:"foo_buy"}
```

2. 附属包 `tick_2` 钩子处理：

```mcfunction
# your_pack:tick（已写入 #main:affiliated/tick_2 标签）
function main:affiliated/trigger/handle {objective:"foo_buy", handler:"your_pack:buy/handler"}
```

3. 业务函数：

```mcfunction
# your_pack:buy/handler（以 @s = 触发玩家 身份执行）
give @s minecraft:diamond 1
```

玩家执行 `/trigger foo_buy set 1` 即可获得一颗钻石。