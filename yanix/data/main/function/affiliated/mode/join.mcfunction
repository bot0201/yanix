# 模式附属 API 核心实现：加模式标签 → 传送至模式出生点 → 重置 trigger

# 先消费 trigger（避免重复触发）
$scoreboard players set @s $(objective) 0

# 标记玩家进入该模式
$tag @s add $(tag)

# 传送至模式出生点
$execute \
    in $(dimension) \
    run tp @s $(pos)