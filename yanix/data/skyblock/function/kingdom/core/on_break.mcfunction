# 核心生命归零 → 跳过
execute \
    unless score @s skyblock_core_lives matches 1.. \
    run return 0

# 扣一条命
scoreboard players remove @s skyblock_core_lives 1

# 还有命 → 重生核心
execute \
    if score @s skyblock_core_lives matches 1.. \
    run function skyblock:kingdom/core/on_break_child
execute \
    if score @s skyblock_core_lives matches 1.. \
    run return 0

# 生命耗尽 → 宣布失败
tellraw @a [\
    {"selector":"@s","color":"red"},\
    {"text":" 的王国核心被彻底摧毁了！","color":"dark_red"}\
]
playsound minecraft:entity.ender_dragon.death player @s ~ ~ ~ 1 0.5
title @s title {"text":"你的王国覆灭了！","color":"dark_red","bold":true}
scoreboard players set @s kingdom_level 0
tag @s remove has_kingdom
scoreboard players set @s skyblock_core_lives 0