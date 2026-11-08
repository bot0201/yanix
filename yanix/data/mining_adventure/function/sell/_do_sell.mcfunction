# ========================================
# 出售矿石通用宏 (mining_adventure:sell/_do_sell)
# 参数:
#   item      - 物品 ID (minecraft:xxx)
#   name      - 中文名 (煤炭/粗铁/粗金/钻石)
#   color     - tellraw 中物品名颜色
#   mode      - 0=除法 / 1=乘法 / 2=直接
#   operand   - 除数/乘数
#   zero_msg  - 不足时的提示文本 (仅 mode=0 需要)
# ========================================

# 设置模式与操作数
$scoreboard players set #sell_calc_mode db $(mode)
$scoreboard players set #sell_operand const $(operand)

# 计算玩家背包中的矿石数量
$execute store result score #ore_count db run clear @s $(item) 0

# 如果没有则提示并退出
$execute if score #ore_count db matches 0 run tellraw @s [{"text":"你的背包中没有$(name)可出售！","color":"red"}]
execute if score #ore_count db matches 0 run return fail

# 计算金币
scoreboard players operation #gold_count db = #ore_count db
execute \
    if score #sell_calc_mode db matches 0 \
    run scoreboard players operation #gold_count db /= #sell_operand const
execute \
    if score #sell_calc_mode db matches 1 \
    run scoreboard players operation #gold_count db *= #sell_operand const

# mode=0: 除法后如果金币为 0 则提示并退出
$execute \
    if score #gold_count db matches 0 \
    if score #sell_calc_mode db matches 0 \
    run tellraw @s [{"text":"$(name)$(zero_msg)，无法出售！","color":"red"}]
execute \
    if score #gold_count db matches 0 \
    if score #sell_calc_mode db matches 0 \
    run return fail

# 清除所有物品
$clear @s $(item)

# 发放金币
scoreboard players operation @s money += #gold_count db

# 成功提示
$tellraw @s [\
    {"text":"出售成功！","color":"green"},\
    {"text":" 出售了 ","color":"white"},\
    {"score":{"name":"#ore_count","objective":"db"},"color":"$(color)"},\
    {"text":" 个$(name)，获得了 ","color":"white"},\
    {"score":{"name":"#gold_count","objective":"db"},"color":"gold"},\
    {"text":" 金币（余额：","color":"white"},\
    {"score":{"name":"@s","objective":"money"},"color":"gold"},\
    {"text":"）","color":"white"}\
]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2