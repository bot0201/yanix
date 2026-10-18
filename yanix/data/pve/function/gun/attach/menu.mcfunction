# ========================================
# 配件菜单 - 主页面
# 由 tick (server 身份) 调用，规避 /dialog 权限问题
# ========================================
execute \
    if entity @a[tag=request_attach_menu] \
    run dialog show @a[tag=request_attach_menu] pve:attach_menu
tag @a[tag=request_attach_menu] remove request_attach_menu