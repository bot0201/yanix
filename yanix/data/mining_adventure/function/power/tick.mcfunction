# ========================================
# 电力系统 - 每 tick 处理
# 太阳能发电机: 白天产生电力
# 自动采矿机: 消耗电力产出矿石
# 对话框请求已移至 run_per_2_tick
# ========================================

# 递增 tick 计数器
scoreboard players add #power_tick tmp 1

# ========================================
# 太阳能发电机: 每 14 tick 处理一次 (~0.7秒)
# ========================================
execute \
    if score #power_tick tmp >= #14 const \
    run function mining_adventure:power/solar_process
execute \
    if score #power_tick tmp >= #14 const \
    run scoreboard players set #power_tick tmp 0

# ========================================
# 自动采矿机: 使用单独计数器，每 7 tick 处理 (~0.35秒)
# ========================================
scoreboard players add #mining_tick tmp 1
execute \
    if score #mining_tick tmp >= #7 const \
    run function mining_adventure:power/mining_process
execute \
    if score #mining_tick tmp >= #7 const \
    run scoreboard players set #mining_tick tmp 0