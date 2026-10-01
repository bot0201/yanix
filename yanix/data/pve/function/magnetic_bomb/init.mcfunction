# ========================================
# 磁吸炸弹 - 初始化
# 相比破片手雷：更重、更慢、伤害更高、可吸附敌人
# ========================================

scoreboard objectives add magnetic_vx dummy
scoreboard objectives add magnetic_vy dummy
scoreboard objectives add magnetic_vz dummy
scoreboard objectives add magnetic_life dummy

# 磁吸炸弹物理常数（放大 100 倍）
# 初速倍率：0.40 格/tick = 8 格/秒（比手雷慢，体现重量感）
scoreboard players set #mag_speed magnetic_math 20
# 重力加速度：0.06 格/tick²（比手雷的 0.04 大，更重更快下坠）
scoreboard players set #mag_gravity magnetic_math 6
# 向上初速加成：0.15 格/tick（比手雷的 0.25 小，弧线更低）
scoreboard players set #mag_boost magnetic_math 15
# 缩放因子
scoreboard players set #mag_100 magnetic_math 100
# 最大存活时间：150 tick = 7.5 秒（比手雷的5秒更长）
scoreboard players set #mag_max_life magnetic_math 150
# 吸附检测距离（格×100）
scoreboard players set #mag_latch_range magnetic_math 300

scoreboard objectives add magnetic_math dummy