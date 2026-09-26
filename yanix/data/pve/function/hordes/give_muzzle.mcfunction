# 给当前玩家随机等级的枪口 (1-2)
execute \
    store result score #pve random \
    run random value 1..2
scoreboard players operation @s attach_muzzle = #pve random