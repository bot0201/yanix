# 购买逻辑共享：
#   - 清除手中/背包中的商店物品
#   - 检查绿宝石数量
#   - 扣除绿宝石
#   - 发放饰品所有权
# 调用方式: scoreboard players set @s buy_<item> 1
#   或通过 advancement 自动触发

# 清除背包中的商店饰品标记物品
clear @s minecraft:glass[minecraft:custom_data~{buy:"astronaut_helmet"}]
clear @s minecraft:glass[minecraft:custom_data~{buy:"mysterious_goggles"}]
clear @s minecraft:lead[minecraft:custom_data~{buy:"mysterious_goggles"}]
clear @s minecraft:writable_book[minecraft:custom_data~{buy:"dialog"}]

# 检查是否已拥有
execute if score @s owns_astronaut_helmet matches 1 run tellraw @s [{"text":"你已拥有宇航员头盔！","color":"red"}]
execute if score @s owns_astronaut_helmet matches 1 run return fail

# 检查绿宝石余额
execute store result score #shop tmp run clear @s minecraft:emerald 0
execute unless score #shop tmp matches 3.. run tellraw @s [{"text":"绿宝石不足！需要 3 个绿宝石","color":"red"}]
execute unless score #shop tmp matches 3.. run return fail

# 扣除 3 个绿宝石
clear @s minecraft:emerald 3

# 发放饰品
scoreboard players set @s owns_astronaut_helmet 1
tellraw @s [{"text":"购买成功！","color":"green"},{"text":" 你获得了 ","color":"white"},{"text":"宇航员头盔","color":"aqua"}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1

advancement revoke @s only accessories:shop/buy_astronaut_helmet