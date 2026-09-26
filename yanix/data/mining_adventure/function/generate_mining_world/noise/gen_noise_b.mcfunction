# 情况 B: 新行首列, 从上列(上一行末尾)漂移 ±6
# 读取: #ma_prev MA_NOISE (上列高度)
# 输出: #ma_h MA_HEIGHT
execute \
    store result score #ma_drift MA_HEIGHT \
    run random value -6..6

# 上列高度 + 漂移
scoreboard players operation #ma_h MA_HEIGHT = #ma_prev MA_NOISE
scoreboard players operation #ma_h MA_HEIGHT += #ma_drift MA_HEIGHT