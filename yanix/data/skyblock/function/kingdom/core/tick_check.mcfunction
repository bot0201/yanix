# 在多人维度中检查核心块是否还在
$execute \
    in skyblock:skyblock_multiplayer \
    unless block $(x) $(y) $(z) minecraft:reinforced_deepslate \
    run function skyblock:kingdom/core/on_break with storage skyblock:core