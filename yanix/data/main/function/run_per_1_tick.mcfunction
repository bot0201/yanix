# ========================================
# run_per_1_tick - 每 tick 执行
# 放置需要即时响应的逻辑
# ========================================

# 破片手雷物理引擎（无手雷实体时跳过）
execute \
    if entity @e[type=marker,tag=grenade,limit=1] \
    run function pve:grenade/tick

# 磁吸炸弹物理引擎（无磁吸炸弹实体时跳过）
execute \
    if entity @e[type=marker,tag=magnetic_bomb,limit=1] \
    run function pve:magnetic_bomb/tick

# 模拟经营 - 电力系统
function mining_adventure:power/tick