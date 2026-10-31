# 在多人维度中放置核心（强化深板岩）
$setblock $(x) $(y) $(z) minecraft:reinforced_deepslate

# 设置核心生命 = 王国等级 + 2
scoreboard players operation @s skyblock_core_lives = @s kingdom_level
scoreboard players add @s skyblock_core_lives 2