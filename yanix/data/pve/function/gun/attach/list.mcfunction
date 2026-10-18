# ========================================
# 配件菜单 - 查看当前配件
# 由 tick (server 身份) 调用，规避 /dialog 权限问题
# ========================================
execute \
    if entity @a[tag=request_attach_list] \
    run dialog show @a[tag=request_attach_list] pve:attach_list
tag @a[tag=request_attach_list] remove request_attach_list