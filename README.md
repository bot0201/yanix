# Yanix_DataPack
> 一个基于 Minecraft 1.21.11 的高性能、深度依赖Multiverse-Core插件的多模式数据包。

[![Minecraft Version](https://img.shields.io/badge/Minecraft-1.21.11-blue.svg)](https://minecraft.net)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Size](https://img.shields.io/badge/Size-229%20KB-success.svg)]()
[![GitHub Stars](https://img.shields.io/github/stars/bot0201/yanix?style=for-the-badge&logo=github&label=Stars&color=yellow)]()

## 📖 项目简介

我的好朋友花了一块钱在 [simpfun.cn](https://www.simpfun.cn) （中文名：`简约欢`）帮我租了一个服务器。由于我个人网络环境较差，无法顺利下载一些常用的插件（例如枪械、职业战争等），因此我决定**使用纯原版数据包手搓出所有的游戏逻辑**。

经过3个月的开发与**极度严苛的性能优化**，整个数据包的体积从最初的 736 KB（包含大量穷举坐标）极致瘦身到了 **约150 KB** (现在增加的新功能又增加了体积)，且实现了零卡顿运行。

---

## ✨ 核心特性

### ⚡ 极致的性能架构
*   **三级 Tick 控制系统**：将逻辑按需分为 `run_per_1/2/3_tick`，高频逻辑（如射击、射线检测）与低频逻辑（如UI刷新、计分板统计）彻底分离。
*   **宏（Macro）替代穷举**：抛弃了庞大的静态坐标计分板（如 `MINE_XYZ_ADDR`），使用宏变量（如 `mv create chunk_$(uid)`）动态生成玩家专属世界，直接节省了 4999 行代码；抛弃了手动穷举const初始化，通过宏递归生成21亿个常量（0~2147483647）
*   **事件驱动与零实体扫描**：全面重构了刷怪与射线检测逻辑，移除了高频的盔甲架扫描（之前用spark看过,主要的卡顿原因是`EntityLookup`），大幅降低了服务器 MSPT。
*   **无实体实弹组件**：利用计分板计时，将枪械原型改为末影之眼，实现零实体生成、高射速。

### 🔫 硬核的原版 PVE 枪械系统
*   **M4A1 突击步枪**：50格射程，命中即10点伤害，无射程衰减。
*   **M1014 半自动霰弹枪**：单次射击散射8颗弹丸，水平散布±7°，垂直散布±3°，射程25格（全中24点伤害）。
*   **AWM 狙击步枪**：
    *   50伤害/发，100格射程，0°散射（绝对的精准！）
    *   5发弹匣，4秒换弹，1秒（栓动）射速
    *   **开镜（ADS）系统**：切换视角模型、降低移速、增强稳定性。
*   **枪型路由系统**：枪械逻辑按 `m4a1` / `m1014` / `awm` 分文件夹独立管理，道具使用 `custom_data` 区分。

## 📋 前置依赖
- 需要服务端安装 [Multiverse-Core](https://www.spigotmc.org/resources/multiverse-core.64450) 插件（用于 `mining_adventure` 模式地皮与PVE等地图）。
> 没错，就这一个，不过也是深度依赖，不然只剩下一个主城了

### 🏆 其他游戏模式
*   **模拟经营**（mining_adventure）：基于 `uid` 计分板（可以自动注册，与AuthMe插件完全没有关系），实现“每人一世界”的专属地皮生成。
*   **职业战争**（kit_battle）：包含职业系统、进度系统（如“颗秒！”）、自定义武器（秒人斧、珍珠弓）。
*   **PVE 波次与 Boss 系统**：包含15波（高血量白板Boss）、25波（自带抗性3的折磨Boss）等关卡设计。
*   **自定义成就**：如“老吃家”、“中国人能飞×2”等原版进度扩展。
*   **快捷菜单**（qm实际上是QuickMenu的2个首字母）：纯数据包驱动的箱子菜单。


## 下载
1. 主页的点击code按钮，下载源代码并解压，然后将`yanix`文件夹拖入服务器端世界文件夹内的`datapacks`目录、输入指令`/reload`重新加载。
2. 将`generated`文件夹拖入存档目录，用于模拟经营模式的结构生成数据。
3. (可选，但非常建议)将yanix_resourcepack上传随便一个地方，然后拿到下载链接（可以是*.zip的格式），然后在`server.properties`中配置`resourcepack`为下载链接的URL。

## 优化历程
1. 第一次卡顿，tps约15，元凶EntityLookup()
> 应对：大幅度整改、优化，使用三级控制系统
2. 第二次卡顿，tps约10，元凶EntityLookup()
> 应对：2次深度优化，commit msg为`超 级 优 化`（取自梗：看我超级搭路：NOOOOOOOOOOOOO——）