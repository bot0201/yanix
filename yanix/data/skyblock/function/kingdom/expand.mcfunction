# 未建国 → 提示退出
execute \
    unless entity @s[tag=has_kingdom] \
    run tellraw @s {"text":"你需要先建立王国！","color":"red"}
execute \
    unless entity @s[tag=has_kingdom] \
    run return fail

# 计算扩张费用 = 10 + (当前等级 - 1) × 5
scoreboard players operation #sb_expand_cost tmp = @s kingdom_level
scoreboard players operation #sb_expand_cost tmp -= #1 const
scoreboard players operation #sb_expand_cost tmp *= #5 const
scoreboard players operation #sb_expand_cost tmp += #10 const

# 检查王国币是否足够
execute \
    unless score @s kingdom_coin >= #sb_expand_cost tmp \
    run tellraw @s [\
        {"text":"王国币不足！扩张到等级 ","color":"red"},\
        {"text":"需 ","color":"white"},\
        {"score":{"name":"#sb_expand_cost","objective":"tmp"},"color":"gold"},\
        {"text":" 王国币（余额：","color":"white"},\
        {"score":{"name":"@s","objective":"kingdom_coin"},"color":"gold"},\
        {"text":"）","color":"white"}\
    ]
execute \
    unless score @s kingdom_coin >= #sb_expand_cost tmp \
    run return fail

# 扣除王国币
scoreboard players operation @s kingdom_coin -= #sb_expand_cost tmp

# 升级
scoreboard players add @s kingdom_level 1

tellraw @s [\
    {"text":"领土扩张成功！","color":"green"},\
    {"text":" 王国等级：","color":"white"},\
    {"score":{"name":"@s","objective":"kingdom_level"},"color":"gold"},\
    {"text":"","color":"white"}\
]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2