# 给当前玩家随机等级的瞄准镜 (1-3)
execute \
    store result score #pve random \
    run random value 1..3
scoreboard players operation @s attach_scope = #pve random