# ============================================================
#  单颗矿石种子: 随机位置 → 放置 → 斑块生长
# ============================================================

# ---- 终止条件 ----
execute \
    if score #ma_ore_count MA_SEED matches ..0 \
    run return 0

# ---- 随机位置 (区块内偏移) ----
execute \
    store result score #ma_ore_x MA_X \
    run random value 0..28
execute \
    store result score #ma_ore_z MA_Z \
    run random value 0..30
execute \
    store result score #ma_ore_y MA_HEIGHT \
    run random value -57..-10

# ---- 随机矿石类型 (1..20 → 加权分配) ----
execute \
    store result score #ma_ore_type MA_ORE_TYPE \
    run random value 1..20
execute \
    if score #ma_ore_type MA_ORE_TYPE matches 1..10 \
    run scoreboard players set #ma_ore_type MA_ORE_TYPE 1
execute \
    if score #ma_ore_type MA_ORE_TYPE matches 11..16 \
    run scoreboard players set #ma_ore_type MA_ORE_TYPE 2
execute \
    if score #ma_ore_type MA_ORE_TYPE matches 17..19 \
    run scoreboard players set #ma_ore_type MA_ORE_TYPE 3
execute \
    if score #ma_ore_type MA_ORE_TYPE matches 20 \
    run scoreboard players set #ma_ore_type MA_ORE_TYPE 4

# ---- 深度校验: 金 Y<-45, 钻石 Y<-50 ----
execute \
    if score #ma_ore_type MA_ORE_TYPE matches 3 \
    unless score #ma_ore_y MA_HEIGHT matches ..-45 \
    run scoreboard players set #ma_ore_type MA_ORE_TYPE 2
execute \
    if score #ma_ore_type MA_ORE_TYPE matches 4 \
    unless score #ma_ore_y MA_HEIGHT matches ..-50 \
    run scoreboard players set #ma_ore_type MA_ORE_TYPE 3

# ---- 放置第一块矿石 ----
function mining_adventure:generate_mining_world/ore/gen_ore_place

# ---- 斑块生长递归 ----
scoreboard players set #ma_grow MA_NOISE 6
function mining_adventure:generate_mining_world/ore/gen_ore_grow

# ---- 计数 -1, 递归 ----
scoreboard players remove #ma_ore_count MA_SEED 1
function mining_adventure:generate_mining_world/ore/gen_ore_seed