# 清除背包中的商店饰品标记物品（包括 dialog 书）
clear @s minecraft:writable_book[minecraft:custom_data~{buy:"dialog"}]
clear @s minecraft:glass[minecraft:custom_data~{buy:"astronaut_helmet"}]
clear @s minecraft:glass[minecraft:custom_data~{buy:"mysterious_goggles"}]
clear @s minecraft:lead[minecraft:custom_data~{buy:"mysterious_goggles"}]

# 打开对话式购买菜单
function accessories:shop/dialog

advancement revoke @s only accessories:shop/buy_dialog