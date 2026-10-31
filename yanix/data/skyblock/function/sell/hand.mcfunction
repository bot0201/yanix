# ========================================
# 出售手中物品 - 逐项匹配
# ========================================

# 钻石 10 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:diamond 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:10,item:"minecraft:diamond"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 钻石块 90 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:diamond_block 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:90,item:"minecraft:diamond_block"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 绿宝石 8 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:emerald 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:8,item:"minecraft:emerald"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 绿宝石块 72 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:emerald_block 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:72,item:"minecraft:emerald_block"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 下界合金锭 50 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:netherite_ingot 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:50,item:"minecraft:netherite_ingot"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 下界合金块 450 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:netherite_block 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:450,item:"minecraft:netherite_block"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 远古残骸 25 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:ancient_debris 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:25,item:"minecraft:ancient_debris"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 金锭 5 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:gold_ingot 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:5,item:"minecraft:gold_ingot"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 金块 45 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:gold_block 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:45,item:"minecraft:gold_block"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 粗金 3 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:raw_gold 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:3,item:"minecraft:raw_gold"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 粗金块 27 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:raw_gold_block 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:27,item:"minecraft:raw_gold_block"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 铁锭 3 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:iron_ingot 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:3,item:"minecraft:iron_ingot"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 铁块 27 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:iron_block 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:27,item:"minecraft:iron_block"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 粗铁 2 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:raw_iron 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:2,item:"minecraft:raw_iron"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 粗铁块 18 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:raw_iron_block 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:18,item:"minecraft:raw_iron_block"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 青金石 2 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:lapis_lazuli 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:2,item:"minecraft:lapis_lazuli"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 红石 2 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:redstone 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:2,item:"minecraft:redstone"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 煤炭 1 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:coal 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:1,item:"minecraft:coal"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 火药 2 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:gunpowder 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:2,item:"minecraft:gunpowder"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 末影珍珠 5 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:ender_pearl 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:5,item:"minecraft:ender_pearl"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 粘液球 3 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:slime_ball 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:3,item:"minecraft:slime_ball"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 蜘蛛眼 2 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:spider_eye 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:2,item:"minecraft:spider_eye"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 线 1 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:string 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:1,item:"minecraft:string"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 骨头 1 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:bone 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:1,item:"minecraft:bone"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 腐肉 1 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:rotten_flesh 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:1,item:"minecraft:rotten_flesh"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 箭 1 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:arrow 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:1,item:"minecraft:arrow"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 小麦 2 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:wheat 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:2,item:"minecraft:wheat"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 马铃薯 2 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:potato 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:2,item:"minecraft:potato"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 胡萝卜 2 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:carrot 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:2,item:"minecraft:carrot"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 甜菜根 2 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:beetroot 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:2,item:"minecraft:beetroot"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 西瓜片 1 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:melon_slice 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:1,item:"minecraft:melon_slice"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 南瓜 3 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:pumpkin 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:3,item:"minecraft:pumpkin"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 甘蔗 1 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:sugar_cane 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:1,item:"minecraft:sugar_cane"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 仙人掌 1 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:cactus 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:1,item:"minecraft:cactus"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 圆石 1 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:cobblestone 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:1,item:"minecraft:cobblestone"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 橡木原木 1 金币/个
execute \
    store result score #sell_count tmp \
    run clear @s minecraft:oak_log 0
execute \
    if score #sell_count tmp matches 1.. \
    run function skyblock:sell/do_sell {price:1,item:"minecraft:oak_log"}
execute \
    if score #sell_count tmp matches 1.. \
    run return 0

# 未匹配到任何已知物品
tellraw @s {"text":"你手上的物品无法出售！请查看可出售列表。","color":"red"}