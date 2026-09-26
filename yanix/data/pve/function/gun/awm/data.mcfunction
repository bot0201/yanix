# ============================================
#  AWM 数值配置 — 修改此处即可调整全部参数
# ============================================
#  伤害      → 50       (shoot_recursion_child 硬编码，damage 不支持变量)
#  射程      → 100 格   (shoot_recursion_child 硬编码)
#  弹匣容量  → 5 发     (shoot / reloaded)
#  换弹时间  → 80 tick  (run_per_2_tick 硬编码，matches 不支持变量)
#  栓动冷却  → 10×2tick (shoot / run_per_2_tick)
#  开镜减速  → slowness V (scope_on)
# ============================================

scoreboard players set #awm cooldown 10
scoreboard players set #awm magazine 5