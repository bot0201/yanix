# ========================================
# 太阳能发电机 - 单机发电 (宏, 由 solar_process 以 marker 身份调用)
# $(owner_uuid) 来自 marker 的 data.owner_uuid
# ========================================
$execute \
    as @a[nbt={UUID:$(owner_uuid)}] \
    unless score @s electricity matches 100.. \
    run scoreboard players add @s electricity 1