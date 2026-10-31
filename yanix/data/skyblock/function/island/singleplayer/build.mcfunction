# 建造初始岛屿平台（3×1 泥土）
fill 0 100 -1 2 100 1 minecraft:dirt
setblock 1 101 -1 minecraft:oak_sapling
setblock 1 101 1 minecraft:chest[facing=south]

# 填充初始物资
item replace block 1 101 1 container.0 with minecraft:lava_bucket
item replace block 1 101 1 container.1 with minecraft:ice 2
item replace block 1 101 1 container.2 with minecraft:bone_meal 8
item replace block 1 101 1 container.3 with minecraft:oak_sapling
item replace block 1 101 1 container.4 with minecraft:melon_seeds
item replace block 1 101 1 container.5 with minecraft:pumpkin_seeds
item replace block 1 101 1 container.6 with minecraft:sugar_cane
item replace block 1 101 1 container.7 with minecraft:cactus