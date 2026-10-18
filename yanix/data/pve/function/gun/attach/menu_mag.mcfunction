# ========================================
# 配件菜单 - 弹匣
# 由 tick (server 身份) 调用，规避 /dialog 权限问题
# ========================================
execute \
    if entity @a[tag=request_attach_menu_mag] \
    run dialog show @a[tag=request_attach_menu_mag] pve:attach_menu_mag
tag @a[tag=request_attach_menu_mag] remove request_attach_menu_mag