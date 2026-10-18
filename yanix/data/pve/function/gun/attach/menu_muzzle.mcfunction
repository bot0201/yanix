# ========================================
# 配件菜单 - 枪口
# 由 tick (server 身份) 调用，规避 /dialog 权限问题
# ========================================
execute \
    if entity @a[tag=request_attach_menu_muzzle] \
    run dialog show @a[tag=request_attach_menu_muzzle] pve:attach_menu_muzzle
tag @a[tag=request_attach_menu_muzzle] remove request_attach_menu_muzzle