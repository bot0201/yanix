# ========================================
# 饰品商店 - 打开对话框
# 由 tick (server 身份) 调用，规避 /dialog 权限问题
# ========================================
execute \
    if entity @a[tag=request_accessory_shop] \
    run dialog show @a[tag=request_accessory_shop] accessories:accessory_shop
tag @a[tag=request_accessory_shop] remove request_accessory_shop