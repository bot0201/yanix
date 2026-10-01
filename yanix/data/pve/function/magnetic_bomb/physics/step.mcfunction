# ========================================
# 磁吸炸弹 - 物理步进
# @s = 磁吸炸弹 marker 实体
# ========================================

# === 分支：已吸附 ===
# 已吸附时跳过自由落体，直接跟随目标
execute \
    if entity @s[tag=magnetic_latched] \
    run function pve:magnetic_bomb/physics/latched

# === 分支：自由落体（未吸附）===
execute \
    unless entity @s[tag=magnetic_latched] \
    run function pve:magnetic_bomb/physics/free_fall