# 首次进入时建造岛屿（检查箱子是否已存在）
execute \
    unless block 1 101 1 minecraft:chest \
    run function skyblock:island/singleplayer/build

# 传送玩家到岛屿
tp @s 0 101 0 0 0

tellraw @s {"text":"欢迎来到你的空岛！","color":"green"}