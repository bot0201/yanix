# ========================================
# 电力商店 - 打开购买对话框
# 由 tick (server 身份) 调用，规避 /dialog 权限问题
# ========================================
execute \
    if entity @a[tag=request_power_shop] \
    run dialog show @a[tag=request_power_shop] mining_adventure:power_shop
tag @a[tag=request_power_shop] remove request_power_shop