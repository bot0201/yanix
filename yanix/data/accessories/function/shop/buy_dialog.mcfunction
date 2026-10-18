# 清除背包中的商店饰品标记物品（包括 dialog 书）
clear @s minecraft:writable_book[minecraft:custom_data~{buy:"dialog"}]
clear @s minecraft:glass[minecraft:custom_data~{buy:"astronaut_helmet"}]
clear @s minecraft:glass[minecraft:custom_data~{buy:"mysterious_goggles"}]
clear @s minecraft:lead[minecraft:custom_data~{buy:"mysterious_goggles"}]

# 通过 tag 调度打开对话框 (由 tick 以 server 身份处理)
tag @s add request_accessory_shop

advancement revoke @s only accessories:shop_buy_dialog