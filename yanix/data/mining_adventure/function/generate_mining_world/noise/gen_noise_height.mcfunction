# ============================================================
#  伪柏林噪声: 随机漂移法
# ============================================================
#  原理: 每次移动一格，高度随机漂移 ±3（行内）/ ±6（换行）
#  效果: 产生平滑过渡的地形，避免"刺猬山"
#
#  3 种情况:
#    (0,0):    首列，随机基准高度 -40 ~ -10
#    (x>0,z=0): 新行首列，从上列(上行末)漂移 ±6
#    (z>0):    行内步进，从左侧列漂移 ±3
#
#  输出: #ma_h MA_HEIGHT (Y坐标) + 更新 #ma_prev MA_NOISE
# ============================================================

# == 情况 A: (0,0) 首列基准 ==
execute \
    if score #ma_x MA_X matches 0 \
    if score #ma_z MA_Z matches 0 \
    run function mining_adventure:generate_mining_world/noise/gen_noise_a

# == 情况 B: (x>0, z=0) 新行首列 ==
execute \
    unless score #ma_x MA_X matches 0 \
    if score #ma_z MA_Z matches 0 \
    run function mining_adventure:generate_mining_world/noise/gen_noise_b

# == 情况 C: (z>0) 行内步进 ==
execute \
    unless score #ma_z MA_Z matches 0 \
    run function mining_adventure:generate_mining_world/noise/gen_noise_c

# == 钳制范围: -50 ~ -5 ==
execute \
    unless score #ma_h MA_HEIGHT matches -50.. \
    run scoreboard players set #ma_h MA_HEIGHT -50
execute \
    unless score #ma_h MA_HEIGHT matches ..-5 \
    run scoreboard players set #ma_h MA_HEIGHT -5

# == 更新锚点 ==
scoreboard players operation #ma_prev MA_NOISE = #ma_h MA_HEIGHT
# 行末时额外保存 row_end
execute \
    if score #ma_z MA_Z matches 31 \
    run scoreboard players operation #ma_row_end MA_SEED = #ma_h MA_HEIGHT