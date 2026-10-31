# ========================================
# 自动采矿机 - 射线命中
# 在当前对齐位置上方建造自动采矿机
# 结构: 3x3x2 (宽x高x深)
# 层0 (y+1): 3x3 石砖, 中心箱子
# 层1 (y+2): 中心熔炉, 四方向投掷器朝内, 四角铁块
# ========================================

# 扣款
scoreboard players remove @s money 10

# 层0: 3x3 石砖
fill ~ ~1 ~ ~2 ~1 ~2 stone_bricks

# 层0: 中心替换为箱子
setblock ~1 ~1 ~1 chest[facing=north]

# 层1: 四角铁块
setblock ~ ~2 ~ iron_block
setblock ~2 ~2 ~ iron_block
setblock ~ ~2 ~2 iron_block
setblock ~2 ~2 ~2 iron_block

# 层1: 中心熔炉
setblock ~1 ~2 ~1 furnace[facing=north]

# 层1: 四方向投掷器朝内
setblock ~ ~2 ~1 dropper[facing=east]
setblock ~2 ~2 ~1 dropper[facing=west]
setblock ~1 ~2 ~ dropper[facing=south]
setblock ~1 ~2 ~2 dropper[facing=north]

# 创建标记实体追踪该采矿机
summon minecraft:marker ~1 ~1.5 ~1 \
    {Tags:["mining_machine"],data:{}}
data modify entity @e[tag=mining_machine,limit=1,sort=nearest] \
    data.owner_uuid set from entity @s UUID

# 提示
tellraw @s [\
    {"text":"自动采矿机建造完成！","color":"green"},\
    {"text":" 花费了 ","color":"white"},\
    {"text":"10 金币","color":"gold"},\
    {"text":"，剩余：","color":"white"},\
    {"score":{"name":"@s","objective":"money"},"color":"gold"}\
]
playsound minecraft:block.anvil.place player @s ~ ~ ~ 1 1