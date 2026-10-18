# ========================================
# 太阳能发电机 - 发电处理
# 仅在白天为所有太阳能发电机的拥有者 +1 电力
# 每个 marker 存 data.owner_uuid，通过宏匹配 @a[nbt={UUID:...}]
# ========================================
function main:lib/tools/get_day_time
execute \
    if score daytime tmp matches 0..13000 \
    as @e[tag=solar_generator] \
    run function mining_adventure:power/solar_generate \
    with entity @s data