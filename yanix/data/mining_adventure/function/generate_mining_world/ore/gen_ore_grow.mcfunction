# ============================================================
#  矿石斑块生长: 种子位置随机游走扩散
#  每次迭代: 在 ±2 范围内随机偏移 → setblock 同种矿石
#  注意: gen_setblock 使用 "replace" 模式, 只在非空气块上放置
# ============================================================

# ---- 终止 ----
execute \
    if score #ma_grow MA_NOISE matches ..0 \
    run return 0

# ---- 随机偏移 (±2) ----
execute \
    store result score #ma_dx MA_BEDROCK \
    run random value -2..2
execute \
    store result score #ma_dy MA_HEIGHT \
    run random value -2..2
execute \
    store result score #ma_dz MA_BASE_X \
    run random value -2..2

# ---- 新坐标 = 种子 + 偏移 ----
scoreboard players operation #ma_new MA_X = #ma_ore_x MA_X
scoreboard players operation #ma_new MA_X += #ma_dx MA_BEDROCK
scoreboard players operation #ma_new MA_Z = #ma_ore_z MA_Z
scoreboard players operation #ma_new MA_Z += #ma_dz MA_BASE_X
scoreboard players operation #ma_new MA_HEIGHT = #ma_ore_y MA_HEIGHT
scoreboard players operation #ma_new MA_HEIGHT += #ma_dy MA_HEIGHT

# ---- 钳制在区块范围内 ----
execute \
    unless score #ma_new MA_X matches 0..29 \
    run return run scoreboard players remove #ma_grow MA_NOISE 1
execute \
    unless score #ma_new MA_Z matches 0..31 \
    run return run scoreboard players remove #ma_grow MA_NOISE 1
execute \
    unless score #ma_new MA_HEIGHT matches -59..-1 \
    run return run scoreboard players remove #ma_grow MA_NOISE 1

# ---- 更新种子位置 (= 游走到新位置) ----
scoreboard players operation #ma_ore_x MA_X = #ma_new MA_X
scoreboard players operation #ma_ore_z MA_Z = #ma_new MA_Z
scoreboard players operation #ma_ore_y MA_HEIGHT = #ma_new MA_HEIGHT

# ---- 放置矿石 (replace 模式: 只替换已有方块) ----
function mining_adventure:generate_mining_world/ore/gen_ore_place

# ---- 递归 ----
scoreboard players remove #ma_grow MA_NOISE 1
function mining_adventure:generate_mining_world/ore/gen_ore_grow