# ========================================
# run_per_1_tick - 每 tick 执行
# 放置需要即时响应的逻辑
# ========================================

# SBM 箱子菜单 - 点击检测
function sbm:chest/scan

# 清理玩家背包中被拿取的箱子菜单 UI 物品 (ui:1)
execute positioned -10 69 -9 as @a[distance=..8] run clear @s *[custom_data~{ui:1}]
execute positioned -9 69 -9 as @a[distance=..8] run clear @s *[custom_data~{ui:1}]

# 破片手雷物理引擎
function pve:grenade/tick

# 磁吸炸弹物理引擎
function pve:magnetic_bomb/tick