# ========================================
# 房屋购买预览 - 打开对话框 (default_house)
# 由 tick (server 身份) 调用，规避 /dialog 权限问题
# ========================================
execute \
    if entity @a[tag=request_default_house_preview] \
    run dialog show @a[tag=request_default_house_preview] mining_adventure:default_house_preview
tag @a[tag=request_default_house_preview] remove request_default_house_preview