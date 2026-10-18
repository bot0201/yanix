# ========================================
# 卖矿商店 - 打开对话框
# 由 tick (server 身份) 调用，规避 /dialog 权限问题
# ========================================
execute \
    if entity @a[tag=request_sell_dialog] \
    run dialog show @a[tag=request_sell_dialog] mining_adventure:sell_ores
tag @a[tag=request_sell_dialog] remove request_sell_dialog