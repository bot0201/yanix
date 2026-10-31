# ========================================
# 雪球菜单 - 打开对话框
# 由 run_per_2_tick (server 身份) 调用，规避 /dialog 权限问题
# ========================================
execute \
    if entity @a[tag=request_snowball_menu] \
    run dialog show @a[tag=request_snowball_menu] main:snowball_menu
tag @a[tag=request_snowball_menu] remove request_snowball_menu