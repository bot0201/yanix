# ========================================
# 房屋预览 - 开始射线检测
# 从玩家视线方向发射射线，找到目标方块
# ========================================

scoreboard players set #house_ray_dist tmp 0
execute \
    anchored eyes \
    positioned ^ ^ ^ \
    run function mining_adventure:house/raycast_step