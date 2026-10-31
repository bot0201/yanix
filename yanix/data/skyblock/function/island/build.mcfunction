$fill $(x1) $(y) $(z1) $(x2) $(y) $(z2) minecraft:dirt
$setblock $(cx) $(y1) $(z1) minecraft:oak_sapling
$setblock $(sx) $(y) $(sz) minecraft:chest[facing=south]

# 填充箱子内物品
$item replace block $(sx) $(y) $(sz) container.0 with minecraft:lava_bucket
$item replace block $(sx) $(y) $(sz) container.1 with minecraft:ice 2
$item replace block $(sx) $(y) $(sz) container.2 with minecraft:bone_meal 8
$item replace block $(sx) $(y) $(sz) container.3 with minecraft:oak_sapling
$item replace block $(sx) $(y) $(sz) container.4 with minecraft:melon_seeds
$item replace block $(sx) $(y) $(sz) container.5 with minecraft:pumpkin_seeds
$item replace block $(sx) $(y) $(sz) container.6 with minecraft:sugar_cane
$item replace block $(sx) $(y) $(sz) container.7 with minecraft:cactus