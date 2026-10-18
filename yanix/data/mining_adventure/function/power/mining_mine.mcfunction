# ========================================
# 自动采矿机 - 单次挖矿 (宏, 由 mining_process 以 marker 身份调用)
# $(owner_uuid) 来自 marker 的 data.owner_uuid
# 匹配主人后委托给 mining_mine_do 执行扣电+出矿
# 执行位置保留为 marker 位置 (mining_process 的 at @s)
# ========================================
$execute \
    as @a[nbt={UUID:$(owner_uuid)}] \
    run function mining_adventure:power/mining_mine_do