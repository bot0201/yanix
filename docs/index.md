# 附属数据包 API 使用手册

> 让第三方数据包无需修改 yanix 核心执行流即可接入生命周期与 trigger 处理。

## 简介

yanix 通过**原版函数标签**的跨数据包合并机制，向外部数据包暴露多组生命周期钩子，并提供 5 套附属 API，均封装了项目通用的「注册 → enable → 检测 → 业务 → 重置」流程：

| 附属 API | 命名空间 | 用途 |
|---------|---------|------|
| trigger 助手 | `main` | 通用 trigger 注册/处理 |
| 职业战争 | `job` | 新增职业（发放 kit + 传送至 kitbattle） |
| 模拟经营建筑 | `mining_adventure` | 新增可购买建筑 |
| 模式 | `main` | 新增游戏模式 + 雪球菜单入口 |
| 附属包管理器 | `main` | 可切换启用的附属包 + 雪球菜单入口 |

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

## 职业战争附属 API（`job` 命名空间）

新增一个职业只需两步：注册 trigger + 提供 kit 函数；发放、传送、重置均由 API 代劳。

### 生命周期钩子（2 个）

| 函数标签 | 执行时机 | 典型用途 |
|---------|---------|---------|
| `#job:affiliated/init` | job 模块 init 完成时执行一次 | 注册职业 trigger |
| `#job:affiliated/tick` | 每 2 tick | 处理职业加入 |

### 1. 注册 `job:affiliated/register`

在 `init` 钩子中调用，创建 `trigger` 类型的计分板。

```mcfunction
function job:affiliated/register {objective:"trigger_job_foo"}
```

参数：

- `objective`：计分板目标名（`trigger` 类型）

### 2. 处理 `job:affiliated/handle`

在 tick 钩子中调用，负责 `enable @a`、检测值 `1..`、分发到发放函数。

```mcfunction
function job:affiliated/handle {objective:"trigger_job_foo", kit:"your_pack:job/foo_kit"}
```

参数：

- `objective`：计分板目标名
- `kit`：发放装备的业务函数路径

### 3. 发放 `job:affiliated/apply`（内部实现）

由 `handle` 自动调用：清空旧装备 → 调用 `kit` → 传送至 kitbattle 中心（`0 85 0`）→ 重置 trigger。

**约定**：

- `kit` 函数以 `as @s`（触发玩家）身份执行，负责发放装备与打上职业标签。
- 业务函数**无需**自行传送或重置 trigger，`apply` 已代劳。

### 完整示例：新增职业

1. `init` 钩子注册：

```mcfunction
# your_pack:init（已写入 #job:affiliated/init 标签）
function job:affiliated/register {objective:"trigger_job_foo"}
```

2. tick 钩子处理：

```mcfunction
# your_pack:tick（已写入 #job:affiliated/tick 标签）
function job:affiliated/handle {objective:"trigger_job_foo", kit:"your_pack:job/foo_kit"}
```

3. kit 函数：

```mcfunction
# your_pack:job/foo_kit（以 @s = 触发玩家 身份执行）
give @s minecraft:iron_sword 1
tag @s add foo
```

玩家执行 `/trigger trigger_job_foo set 1` 即可成为该职业并进入 kitbattle。

## 模拟经营建筑附属 API（`mining_adventure` 命名空间）

新增一个可购买建筑：注册 trigger + 提供结构模板，扣款、余额校验、放置结构均由 API 代劳。

### 生命周期钩子（2 个）

| 函数标签 | 执行时机 | 典型用途 |
|---------|---------|---------|
| `#mining_adventure:affiliated/init` | mining_adventure 模块 init 完成时执行一次 | 注册建筑 trigger |
| `#mining_adventure:affiliated/tick` | 每 2 tick | 处理建筑购买 |

### 1. 注册 `mining_adventure:affiliated/build/register`

在 `init` 钩子中调用，创建 `trigger` 类型的计分板。

```mcfunction
function mining_adventure:affiliated/build/register {objective:"trigger_build_foo"}
```

参数：

- `objective`：计分板目标名（`trigger` 类型）

### 2. 处理 `mining_adventure:affiliated/build/handle`

在 tick 钩子中调用，负责 `enable @a`、检测值 `1..`、分发到建造函数。

```mcfunction
function mining_adventure:affiliated/build/handle {objective:"trigger_build_foo", template:"minecraft:foo_house", price:"10", pos:"0 -60 0", name:"foo小屋"}
```

参数：

- `objective`：计分板目标名
- `template`：结构模板资源路径
- `price`：价格（金币）
- `pos`：放置坐标
- `name`：建筑显示名（用于成功提示）

### 3. 建造 `mining_adventure:affiliated/build/apply`（内部实现）

由 `handle` 自动调用：消费 trigger → 校验 `money` 余额 → 扣款 → 放置结构 → 成功提示。

**约定**：

- 余额使用 `money` 计分板（模拟经营统一货币）。
- 余额不足时提示并中止，不扣款、不放置。
- 业务无需自行重置 trigger。

### 完整示例：新增建筑

1. `init` 钩子注册：

```mcfunction
# your_pack:init（已写入 #mining_adventure:affiliated/init 标签）
function mining_adventure:affiliated/build/register {objective:"trigger_build_foo"}
```

2. tick 钩子处理：

```mcfunction
# your_pack:tick（已写入 #mining_adventure:affiliated/tick 标签）
function mining_adventure:affiliated/build/handle {objective:"trigger_build_foo", template:"minecraft:foo_house", price:"10", pos:"0 -60 0", name:"foo小屋"}
```

玩家执行 `/trigger trigger_build_foo set 1` 即可花费 10 金币建造 foo小屋。

## 模式附属 API（`main` 命名空间）

新增一个游戏模式需三步：注册 trigger → 处理加入 → 合并菜单入口；加模式标签、传送至出生点均由 API 代劳，新模式会**自动出现在雪球菜单**中。

### 生命周期钩子

模式 API 复用全局钩子：注册用 `#main:affiliated/init`，处理用 `#main:affiliated/tick_2`。

### 1. 注册 `main:affiliated/mode/register`

在 `init` 钩子中调用，创建 `trigger` 类型的计分板。

```mcfunction
function main:affiliated/mode/register {objective:"foo_join"}
```

参数：

- `objective`：计分板目标名（`trigger` 类型）

### 2. 处理 `main:affiliated/mode/handle`

在 `tick_2` 钩子中调用，负责 `enable @a`、检测值 `1..`、分发到加入函数。

```mcfunction
function main:affiliated/mode/handle {objective:"foo_join", tag:"gaming_foo", dimension:"minecraft:foo", pos:"0 74 -14"}
```

参数：

- `objective`：计分板目标名
- `tag`：玩家进入该模式后被打上的标签
- `dimension`：目标维度（需带命名空间，如 `minecraft:foo`）
- `pos`：模式出生点坐标

### 3. 加入 `main:affiliated/mode/join`（内部实现）

由 `handle` 自动调用：加 `tag` 标签 → 传送至 `dimension` 的 `pos` → 重置 trigger。

### 4. 菜单入口 `main:affiliated/mode/menu_entry`

在合并进 `#main:affiliated/mode/menu` 标签的函数中调用，生成雪球菜单里该模式的可点击项。

```mcfunction
function main:affiliated/mode/menu_entry {objective:"foo_join", name:"空岛"}
```

参数：

- `objective`：与注册时相同的计分板目标名
- `name`：菜单中显示的模式名

### 5. 显示列表 `main:affiliated/mode/show_menu`（内部实现）

由雪球菜单「模式列表」按钮触发，打印标题并遍历 `#main:affiliated/mode/menu` 标签，无需手动调用。

### 完整示例：新增「空岛」模式

1. `init` 钩子注册：

```mcfunction
# your_pack:init（已写入 #main:affiliated/init 标签）
function main:affiliated/mode/register {objective:"sky_island_join"}
```

2. `tick_2` 钩子处理：

```mcfunction
# your_pack:tick（已写入 #main:affiliated/tick_2 标签）
function main:affiliated/mode/handle {objective:"sky_island_join", tag:"gaming_sky_island", dimension:"minecraft:sky_island", pos:"0 64 0"}
```

3. 菜单入口（合并进 `#main:affiliated/mode/menu` 标签）：

```mcfunction
# your_pack:mode_menu（已写入 #main:affiliated/mode/menu 标签）
function main:affiliated/mode/menu_entry {objective:"sky_island_join", name:"空岛"}
```

玩家在雪球菜单点「模式列表」→ 点「空岛」即可进入。

## 附属包管理器 API（`main` 命名空间）

为「需要被启用/禁用」的附属包提供统一的软开关 + 游戏内 GUI。附属包作者注册一个包，玩家在雪球菜单点「附属包」即可浏览并切换其启用状态。

> 与模式/职业/建筑 API 的区别：那些 API「注册即生效」；本 API 管理「默认禁用、按需启用」的包。启用状态存于 `pack_enabled` 计分板（`#<id>` 虚拟玩家，1=启用 / 0=禁用）。

### 生命周期钩子

复用全局钩子：注册用 `#main:affiliated/init`，处理用 `#main:affiliated/tick_2`。

### 1. 注册 `main:affiliated/pack/register`

在 `init` 钩子中调用，创建 `trigger` 计分板并将包标记为默认禁用。

```mcfunction
function main:affiliated/pack/register {id:"foo"}
```

参数：

- `id`：包的唯一标识（用于计分板虚拟玩家 `#<id>` 与 trigger 名）

### 2. 处理 `main:affiliated/pack/handle`

在 tick 钩子中调用，负责 `enable @a`、检测切换 trigger、翻转启用状态并提示。

```mcfunction
function main:affiliated/pack/handle {id:"foo", name:"示例包"}
```

参数：

- `id`：与注册时相同
- `name`：切换提示中显示的包名

### 3. 门控业务逻辑

**约定**：`handle` 必须无条件调用（否则包被禁用后无法重新启用）；真正的业务逻辑用 `if score #<id> pack_enabled matches 1` 门控：

```mcfunction
# your_pack:tick（已写入 #main:affiliated/tick_2 标签）
function main:affiliated/pack/handle {id:"foo", name:"示例包"}
execute if score #foo pack_enabled matches 1 run function your_pack:logic
```

### 4. 菜单入口 `main:affiliated/pack/menu_entry`

在合并进 `#main:affiliated/pack/menu` 标签的函数中调用，显示包名与当前状态（点击切换）：

```mcfunction
function main:affiliated/pack/menu_entry {id:"foo", name:"示例包"}
```

参数：

- `id`：与注册时相同
- `name`：菜单中显示的包名

### 完整示例：可切换的「示例包」

1. `init` 钩子注册：

```mcfunction
# your_pack:init（已写入 #main:affiliated/init 标签）
function main:affiliated/pack/register {id:"foo"}
```

2. `tick_2` 钩子处理 + 门控：

```mcfunction
# your_pack:tick（已写入 #main:affiliated/tick_2 标签）
function main:affiliated/pack/handle {id:"foo", name:"示例包"}
execute if score #foo pack_enabled matches 1 run function your_pack:logic
```

3. 菜单入口（合并进 `#main:affiliated/pack/menu` 标签）：

```mcfunction
# your_pack:pack_menu（已写入 #main:affiliated/pack/menu 标签）
function main:affiliated/pack/menu_entry {id:"foo", name:"示例包"}
```

玩家在雪球菜单点「附属包」→ 点「示例包」即可切换启用/禁用。