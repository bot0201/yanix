---
alwaysApply: true
---
这是一个Java版1.21.11的Minecraft服务器用数据包，依赖MV多世界插件，用于实现多个世界（不过官方来说是与主世界性质相同的多个维度）的功能，可以区分各个模式
若你需要关于命令的更多详细信息，请参考[wiki](https://zh.minecraft.wiki/w/命令)
当然，这里也给你一些关于数据包的专属链接
+ [Minecraft 数据包](https://zh.minecraft.wiki/w/数据包)
+ [Minecraft Java版函数](https://zh.minecraft.wiki/w/Java版函数)
+ [Minecraft 进度定义格式](https://zh.minecraft.wiki/w/进度定义格式)
+ [Minecraft 旗帜图案定义格式](https://zh.minecraft.wiki/w/旗帜图案定义格式)
+ [Minecraft 方块音效集定义格式](https://zh.minecraft.wiki/w/方块音效集定义格式)
+ [Minecraft 方块变换效果定义格式](https://zh.minecraft.wiki/w/方块变换效果定义格式)
+ [Minecraft 猫音效变种定义格式](https://zh.minecraft.wiki/w/猫音效变种定义格式)
+ [Minecraft 聊天类型](https://zh.minecraft.wiki/w/聊天类型)
+ [Minecraft 鸡音效变种定义格式](https://zh.minecraft.wiki/w/鸡音效变种定义格式)
+ [Minecraft 鸡变种定义格式](https://zh.minecraft.wiki/w/鸡变种定义格式)
+ [Minecraft 牛音效变种定义格式](https://zh.minecraft.wiki/w/牛音效变种定义格式)
+ [Minecraft 牛变种定义格式](https://zh.minecraft.wiki/w/牛变种定义格式)
+ [Minecraft 伤害类型定义格式](https://zh.minecraft.wiki/w/伤害类型定义格式)
+ [Minecraft 饰纹陶罐图案定义格式](https://zh.minecraft.wiki/w/饰纹陶罐图案定义格式)
+ [Minecraft 对话框定义格式](https://zh.minecraft.wiki/w/对话框定义格式)
+ [Minecraft 维度定义格式](https://zh.minecraft.wiki/w/维度定义格式)
+ [Minecraft 维度类型定义格式](https://zh.minecraft.wiki/w/维度类型定义格式)
+ [Minecraft 魔咒定义格式](https://zh.minecraft.wiki/w/魔咒定义格式)
+ [Minecraft 魔咒提供器](https://zh.minecraft.wiki/w/魔咒提供器)
+ [Minecraft 青蛙变种定义格式](https://zh.minecraft.wiki/w/青蛙变种定义格式)
+ [Minecraft 山羊角乐器](https://zh.minecraft.wiki/w/山羊角乐器)
+ [Minecraft 物品修饰器](https://zh.minecraft.wiki/w/物品修饰器)
+ [Minecraft 唱片机曲目](https://zh.minecraft.wiki/w/唱片机曲目)
+ [Minecraft 战利品表定义格式](https://zh.minecraft.wiki/w/战利品表定义格式)
+ [Minecraft 画变种定义格式](https://zh.minecraft.wiki/w/画变种定义格式)
+ [Minecraft 猪音效变种定义格式](https://zh.minecraft.wiki/w/猪音效变种定义格式)
+ [Minecraft 猪变种定义格式](https://zh.minecraft.wiki/w/猪变种定义格式)
+ [Minecraft 谓词](https://zh.minecraft.wiki/w/谓词)
+ [Minecraft 配方](https://zh.minecraft.wiki/w/配方)
+ [Minecraft 槽位源](https://zh.minecraft.wiki/w/槽位源)
+ [Minecraft 自定义世界生成](https://zh.minecraft.wiki/w/自定义世界生成)

# 此服务器含有的世界
## 主世界
+ 名称为overworld
+ 主城专用
+ 出生点为-38 71 0

## 职业战争世界
+ 名称为kitbattle
+ 用于职业战争模式
+ 出生点为[0 74 -14]

## 生存世界
+ 名称为survival
+ 用于内部娱乐
+ 出生点为 默认（目前隐藏，仅供内部娱乐，只需使用mvtp命令即可）

## PVE世界
+ 名称为pve
+ 用于PVE模式
+ 出生点为 904 64 121

## 模拟经营模式
+ 名称为mining_adventure
+ 用于模拟经营模式
+ 出生点为 57 40 170（目前隐藏，正在测试）
### 模拟经营模式附属世界（矿工世界）
+ 名称为mining_adventure:mining_adventure
+ 用于模拟经营模式的挖矿赚钱功能（未实现）
+ 出生点为 10 -25 -8（目前隐藏，只需使用execute的in子命令然后tp到矿工世界出生点即可）
+ 使用worldgen功能生成世界，但是mv指令似乎不支持自定义世界生成，只能使用默认的生成规则

Minecraft 数据包使用指令写function，可以通过`minecraft命名空间`嵌套`tags文件夹`嵌套`function文件夹`内部的`load.json`或`tick.json`文件来实现世界加载时或每秒执行一次的指令
另外，数据包中的命令不允许使用斜杠，只能使用换行分隔每个命令（可以使用N叉树，也称共轭二分）来使用一条指令在多个执行位置执行多次统一命令
