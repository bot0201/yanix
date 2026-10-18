# ========================================
# 自动采矿机 - 执行扣电+出矿
# 以主人身份执行(@s=owner), 位置 = marker (由 mining_process 的 at @s 保留)
# ========================================

# 检查是否有足够电力
execute \
    unless score @s electricity matches 1.. \
    run return fail

# 消耗 1 电力
scoreboard players remove @s electricity 1

# 随机 1~100
execute store result score #rand tmp run random value 1..100

# 钻石 10% (1-10)
execute \
    if score #rand tmp matches 1..10 \
    run summon item ~ ~1 ~ \
    {Item:{id:"minecraft:diamond",count:1},PickupDelay:10}

# 粗金 20% (11-30)
execute \
    if score #rand tmp matches 11..30 \
    run summon item ~ ~1 ~ \
    {Item:{id:"minecraft:raw_gold",count:1},PickupDelay:10}

# 粗铁 30% (31-60)
execute \
    if score #rand tmp matches 31..60 \
    run summon item ~ ~1 ~ \
    {Item:{id:"minecraft:raw_iron",count:1},PickupDelay:10}

# 煤炭 40% (61-100)
execute \
    if score #rand tmp matches 61..100 \
    run summon item ~ ~1 ~ \
    {Item:{id:"minecraft:coal",count:1},PickupDelay:10}