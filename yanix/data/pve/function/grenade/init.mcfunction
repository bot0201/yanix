scoreboard objectives add grenade_vx dummy
scoreboard objectives add grenade_vy dummy
scoreboard objectives add grenade_vz dummy
scoreboard objectives add grenade_life dummy

# 常数（放大 100 倍）
# 初速倍率：0.60 格/tick = 12 格/秒
scoreboard players set #speed grenade_math 25
# 重力加速度：0.04 格/tick²
scoreboard players set #gravity grenade_math 4
# 向上初速加成：0.25 格/tick（保证平视也能投出弧线）
scoreboard players set #boost grenade_math 25
# 缩放因子
scoreboard players set #100 grenade_math 100
# 最大存活时间：100 tick = 5 秒
scoreboard players set #max_life grenade_math 100