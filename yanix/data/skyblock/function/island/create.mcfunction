# 已有岛屿 → 直接传送
execute \
    if score @s skyblock_island matches 1.. \
    run function skyblock:island/return_to_island
execute \
    if score @s skyblock_island matches 1.. \
    run return 0

# =====================
# 新玩家 → 分配岛屿
# =====================

scoreboard players add #skyblock_next_id tmp 1
scoreboard players operation @s skyblock_island = #skyblock_next_id tmp

# 计算岛屿中心 X = 岛屿ID * 1000
scoreboard players operation #sb_cx tmp = @s skyblock_island
scoreboard players operation #sb_cx tmp *= #1000 const

# 计算平台边界
scoreboard players operation #sb_x1 tmp = #sb_cx tmp
scoreboard players operation #sb_x1 tmp -= #1 const
scoreboard players operation #sb_x2 tmp = #sb_cx tmp
scoreboard players operation #sb_x2 tmp += #1 const

# 计算箱子 X
scoreboard players operation #sb_sx tmp = #sb_cx tmp
scoreboard players operation #sb_sx tmp += #1 const

# 静态值写入 storage
data modify storage skyblock:island y set value 100
data modify storage skyblock:island y1 set value 101
data modify storage skyblock:island z1 set value -1
data modify storage skyblock:island z2 set value 1
data modify storage skyblock:island cz set value 0
data modify storage skyblock:island sz set value 0

# 动态值写入 storage
execute \
    store result storage skyblock:island x1 int 1 \
    run scoreboard players get #sb_x1 tmp
execute \
    store result storage skyblock:island x2 int 1 \
    run scoreboard players get #sb_x2 tmp
execute \
    store result storage skyblock:island cx int 1 \
    run scoreboard players get #sb_cx tmp
execute \
    store result storage skyblock:island sx int 1 \
    run scoreboard players get #sb_sx tmp

# 建造岛屿并传送
function skyblock:island/build with storage skyblock:island
function skyblock:island/tp with storage skyblock:island

# 授予根进度
advancement grant @s only skyblock:root