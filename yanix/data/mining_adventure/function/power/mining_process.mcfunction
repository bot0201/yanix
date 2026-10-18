# ========================================
# 自动采矿机 - 采矿处理
# 消耗 1 电力，随机产出矿石
# 煤炭 40% | 粗铁 30% | 粗金 20% | 钻石 10%
# 每个 marker 存 data.owner_uuid，通过宏匹配 @a[nbt={UUID:...}]
# ========================================
execute \
    as @e[tag=mining_machine] \
    at @s \
    run function mining_adventure:power/mining_mine \
    with entity @s data