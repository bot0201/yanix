# 跳过没有核心生命的玩家
execute \
    unless score @s skyblock_core_lives matches 1.. \
    run return 0

# 计算岛屿中心 X = 岛屿ID × 1000
scoreboard players operation #sb_core_cx tmp = @s skyblock_island
scoreboard players operation #sb_core_cx tmp *= #1000 const

# 写入 storage
execute \
    store result storage skyblock:core x int 1 \
    run scoreboard players get #sb_core_cx tmp
data modify storage skyblock:core y set value 100
data modify storage skyblock:core z set value 0

# 检查核心是否还在
function skyblock:kingdom/core/tick_check with storage skyblock:core