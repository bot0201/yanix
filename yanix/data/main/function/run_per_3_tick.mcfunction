# ========================================
# run_per_3_tick - 每 3 tick 执行 (0.15s)
# 放置低频逻辑
# ========================================

# 箱子菜单系统（附近无玩家时跳过）
execute \
    positioned -10 69 -9 \
    if entity @a[distance=..16] \
    run function qm:tick_3

# 成就授予（仅首次执行）
execute \
    unless score #advancement_granted tmp matches 1 \
    run function main:advancement/give_advancement
execute \
    unless score #advancement_granted tmp matches 1 \
    run scoreboard players set #advancement_granted tmp 1

# ----------
# 杂项
# ----------

# 玩家在线时间
function misc:online_time/online_time

# 注册
function main:users/reg_check