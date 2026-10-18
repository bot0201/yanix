# ========================================
# 配件菜单 - 瞄准镜
# 由 tick (server 身份) 调用，规避 /dialog 权限问题
# ========================================
execute \
    if entity @a[tag=request_attach_menu_scope] \
    run dialog show @a[tag=request_attach_menu_scope] pve:attach_menu_scope
tag @a[tag=request_attach_menu_scope] remove request_attach_menu_scope