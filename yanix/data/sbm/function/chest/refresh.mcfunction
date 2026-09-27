# ========================================
# SBM 箱子菜单 - 刷新分发
# 根据 #sbm_page 分数调用对应页面的刷新
# ========================================

execute if score #sbm sbm_page matches 0 run function sbm:chest/refresh_home
execute if score #sbm sbm_page matches 1 run function sbm:chest/refresh_menu1
execute if score #sbm sbm_page matches 2 run function sbm:chest/refresh_menu2