# ========================================
# 太阳能发电机 - 射线命中
# 在当前对齐位置上方建造太阳能发电机
# 结构: 3x3x3 (宽x高x深)
# 层0 (y+1): 3x3 石砖
# 层1 (y+2): 3x3 玻璃
# 层2 (y+3): 阳光探测器(中) + 铁活板门(周)
# ========================================

# 扣款
scoreboard players remove @s mining_adventure_money 5

# 层0: 3x3 石砖
fill ~ ~1 ~ ~2 ~1 ~2 stone_bricks

# 层1: 3x3 玻璃
fill ~ ~2 ~ ~2 ~2 ~2 glass

# 层2: 阳光探测器(中心)
setblock ~1 ~3 ~1 daylight_detector

# 层2: 铁活板门围绕 (除中心外)
# 北边
setblock ~ ~3 ~ iron_trapdoor[facing=north,half=bottom,open=true]
setblock ~1 ~3 ~ iron_trapdoor[facing=north,half=bottom,open=true]
setblock ~2 ~3 ~ iron_trapdoor[facing=north,half=bottom,open=true]
# 南边
setblock ~ ~3 ~2 iron_trapdoor[facing=south,half=bottom,open=true]
setblock ~1 ~3 ~2 iron_trapdoor[facing=south,half=bottom,open=true]
setblock ~2 ~3 ~2 iron_trapdoor[facing=south,half=bottom,open=true]
# 西边
setblock ~ ~3 ~1 iron_trapdoor[facing=west,half=bottom,open=true]
# 东边
setblock ~2 ~3 ~1 iron_trapdoor[facing=east,half=bottom,open=true]

# 创建标记实体追踪该发电机
summon minecraft:marker ~1 ~2 ~1 \
    {Tags:["solar_generator"],data:{}}
data modify entity @e[tag=solar_generator,limit=1,sort=nearest] \
    data.owner_uuid set from entity @s UUID

# 提示
tellraw @s [\
    {"text":"太阳能发电机建造完成！","color":"green"},\
    {"text":" 花费了 ","color":"white"},\
    {"text":"5 金币","color":"gold"},\
    {"text":"，剩余：","color":"white"},\
    {"score":{"name":"@s","objective":"mining_adventure_money"},"color":"gold"}\
]
playsound minecraft:block.stone.place player @s ~ ~ ~ 1 1