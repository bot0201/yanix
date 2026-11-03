# ========================================
# 雪球菜单 - 打开对话框
# 由 run_per_2_tick (server 身份) 调用，规避 /dialog 权限问题
# ========================================
execute \
    as @a[tag=request_snowball_menu] \
    run function main:snowball_menu/dialog_child