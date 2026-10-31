# 已经建国过 → 提示退出
execute \
    if entity @s[tag=has_kingdom] \
    run tellraw @s {"text":"你已经建立过王国了！","color":"red"}
execute \
    if entity @s[tag=has_kingdom] \
    run return fail

# 需要 10 王国币
execute \
    unless score @s kingdom_coin matches 10.. \
    run tellraw @s [\
        {"text":"建国需要 10 王国币！","color":"red"},\
        {"text":"（余额：","color":"white"},\
        {"score":{"name":"@s","objective":"kingdom_coin"},"color":"gold"},\
        {"text":"）","color":"white"}\
    ]
execute \
    unless score @s kingdom_coin matches 10.. \
    run return fail

# 扣除王国币
scoreboard players remove @s kingdom_coin 10

# 设置王国等级
scoreboard players set @s kingdom_level 1
tag @s add has_kingdom

# 计算岛屿中心并放置核心
scoreboard players operation #sb_core_cx tmp = @s skyblock_island
scoreboard players operation #sb_core_cx tmp *= #1000 const
execute \
    store result storage skyblock:core x int 1 \
    run scoreboard players get #sb_core_cx tmp
data modify storage skyblock:core y set value 100
data modify storage skyblock:core z set value 0
execute \
    in skyblock:skyblock_multiplayer \
    run function skyblock:kingdom/core/place with storage skyblock:core

tellraw @a [\
    {"selector":"@s","color":"gold"},\
    {"text":" 建立了王国！核心已放置在岛屿中心。","color":"yellow"}\
]
playsound minecraft:entity.ender_dragon.death player @s ~ ~ ~ 1 1