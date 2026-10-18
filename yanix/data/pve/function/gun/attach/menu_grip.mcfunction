# ========================================
# 配件菜单 - 握把
# 由 tick (server 身份) 调用，规避 /dialog 权限问题
# ========================================
execute \
    if entity @a[tag=request_attach_menu_grip] \
    run dialog show @a[tag=request_attach_menu_grip] pve:attach_menu_grip
tag @a[tag=request_attach_menu_grip] remove request_attach_menu_grip