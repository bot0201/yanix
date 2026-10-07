# 清除背包中的商店饰品标记物品
clear @s minecraft:lead[minecraft:custom_data~{buy:"mysterious_goggles"}]
clear @s minecraft:glass[minecraft:custom_data~{buy:"astronaut_helmet"}]
clear @s minecraft:glass[minecraft:custom_data~{buy:"mysterious_goggles"}]
clear @s minecraft:writable_book[minecraft:custom_data~{buy:"dialog"}]

# 检查是否已拥有
execute if score @s owns_mysterious_goggles matches 1 run tellraw @s [{"text":"你已拥有神秘眼镜！","color":"red"}]
execute if score @s owns_mysterious_goggles matches 1 run return fail

# 检查绿宝石余额
execute store result score #shop tmp run clear @s minecraft:emerald 0
execute unless score #shop tmp matches 3.. run tellraw @s [{"text":"绿宝石不足！需要 3 个绿宝石","color":"red"}]
execute unless score #shop tmp matches 3.. run return fail

# 扣除 3 个绿宝石
clear @s minecraft:emerald 3

# 发放饰品
scoreboard players set @s owns_mysterious_goggles 1
tellraw @s [{"text":"购买成功！","color":"green"},{"text":" 你获得了 ","color":"white"},{"text":"神秘眼镜","color":"dark_purple"}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1

advancement revoke @s only accessories:shop_buy_mysterious_goggles