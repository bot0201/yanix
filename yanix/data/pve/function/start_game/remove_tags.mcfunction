# 移除所有玩家的 PVE 状态标签（合并为单次 as @a 扫描）
execute \
    as @a \
    run function pve:start_game/remove_tags_per_player