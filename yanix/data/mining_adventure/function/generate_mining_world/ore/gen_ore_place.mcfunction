# ============================================================
#  放置矿石块: 根据 #ma_ore_type 选择方块 → macro setblock
#  1=coal_ore  2=iron_ore  3=gold_ore  4=diamond_ore
# ============================================================

# ---- 计算绝对坐标 ----
scoreboard players operation #ma_abs_x MA_NOISE = #ma_x MA_BASE_X
scoreboard players operation #ma_abs_x MA_NOISE += #ma_ore_x MA_X
scoreboard players operation #ma_abs_z MA_BEDROCK = #ma_z MA_BASE_Z
scoreboard players operation #ma_abs_z MA_BEDROCK += #ma_ore_z MA_Z

# ---- 写入 storage ----
execute \
    store result storage ma:ore x int 1 \
    run scoreboard players get #ma_abs_x MA_NOISE
execute \
    store result storage ma:ore y int 1 \
    run scoreboard players get #ma_ore_y MA_HEIGHT
execute \
    store result storage ma:ore z int 1 \
    run scoreboard players get #ma_abs_z MA_BEDROCK

# ---- 根据类型设置 block 字段 ----
data modify storage ma:ore block set value "minecraft:coal_ore"
execute \
    if score #ma_ore_type MA_ORE_TYPE matches 2 \
    run data modify storage ma:ore block set value "minecraft:iron_ore"
execute \
    if score #ma_ore_type MA_ORE_TYPE matches 3 \
    run data modify storage ma:ore block set value "minecraft:gold_ore"
execute \
    if score #ma_ore_type MA_ORE_TYPE matches 4 \
    run data modify storage ma:ore block set value "minecraft:diamond_ore"

# ---- macro ----
function mining_adventure:generate_mining_world/macro/gen_setblock with storage ma:ore