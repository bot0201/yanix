# 情况 C: 行内步进, 从左侧列漂移 ±3
# 读取: #ma_prev MA_NOISE (左侧列高度)
# 输出: #ma_h MA_HEIGHT
execute \
    store result score #ma_drift MA_HEIGHT \
    run random value -3..3

# 左侧高度 + 小步漂移
scoreboard players operation #ma_h MA_HEIGHT = #ma_prev MA_NOISE
scoreboard players operation #ma_h MA_HEIGHT += #ma_drift MA_HEIGHT