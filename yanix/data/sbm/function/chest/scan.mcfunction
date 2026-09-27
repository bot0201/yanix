# ========================================
# SBM 箱子菜单 - 点击扫描
# 检测玩家背包中的 sbm_action 物品并处理
# ========================================

# 从箱子位置扫描附近玩家背包中的 click 物品
execute positioned -10 69 -9 as @a[distance=..8] run function sbm:chest/scan_child