# PVE 波次推进（每波约 30 秒 / 600 time units）
# 优化：仅在 PVE 有玩家时才执行子逻辑
execute \
    if entity @a[tag=gaming_pve] \
    run function pve:horde_going_child