# ============================================================
#  逐列地形生成
#  输入: #ma_x MA_X (列偏移), #ma_z MA_Z (行偏移)
#  输出: 填充该列 stone + bedrock
# ============================================================

# ---- 第 1 步: 计算噪声高度 ----
function mining_adventure:generate_mining_world/noise/gen_noise_height
# 结果: #ma_h MA_HEIGHT = 地表Y (约 -50 ~ -5)

# ---- 第 2 步: 计算基岩高度 (随机波动 -58 ~ -54) ----
execute \
    store result score #ma_b MA_BEDROCK \
    run random value -58..-54

# ---- 第 3 步: 计算绝对坐标 ----
# absX = baseX + offsetX
scoreboard players operation #ma_abs MA_NOISE = #ma_x MA_BASE_X
scoreboard players operation #ma_abs MA_NOISE += #ma_x MA_X
# absZ = baseZ + offsetZ
scoreboard players operation #ma_abs MA_BEDROCK = #ma_z MA_BASE_Z
scoreboard players operation #ma_abs MA_BEDROCK += #ma_z MA_Z

# ---- 第 4 步: 写入 NBT storage ----
execute \
    store result storage ma:col x int 1 \
    run scoreboard players get #ma_abs MA_NOISE
execute \
    store result storage ma:col y int 1 \
    run scoreboard players get #ma_h MA_HEIGHT
execute \
    store result storage ma:col z int 1 \
    run scoreboard players get #ma_abs MA_BEDROCK
execute \
    store result storage ma:col by int 1 \
    run scoreboard players get #ma_b MA_BEDROCK

# ---- 第 5 步: macro 填充石头柱 ----
function mining_adventure:generate_mining_world/macro/gen_fill_col with storage ma:col

# ---- 第 6 步: macro 填充基岩 ----
function mining_adventure:generate_mining_world/macro/gen_fill_bedrock with storage ma:col

# ---- 第 7 步: 推进到下一列 ----
scoreboard players add #ma_z MA_Z 1
execute \
    if score #ma_z MA_Z matches 32.. \
    run scoreboard players add #ma_x MA_X 1
execute \
    if score #ma_z MA_Z matches 32.. \
    run scoreboard players set #ma_z MA_Z 0

# ---- 终止条件 ----
execute \
    if score #ma_x MA_X matches 30.. \
    run return 0

# ---- 递归 ----
function mining_adventure:generate_mining_world/column/gen_column