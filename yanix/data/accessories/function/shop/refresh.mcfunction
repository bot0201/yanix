# ========================================
# 饰品商店 - 箱子菜单刷新 (-9 69 -9)
# 每 3 tick 刷新箱子内容
# ========================================

# ---- 背景板 (宏批量填充) ----
function accessories:shop/refresh_bg_child {slot:0}
function accessories:shop/refresh_bg_child {slot:1}
function accessories:shop/refresh_bg_child {slot:2}
function accessories:shop/refresh_bg_child {slot:3}
function accessories:shop/refresh_bg_child {slot:4}
function accessories:shop/refresh_bg_child {slot:5}
function accessories:shop/refresh_bg_child {slot:6}
function accessories:shop/refresh_bg_child {slot:7}
function accessories:shop/refresh_bg_child {slot:8}
function accessories:shop/refresh_bg_child {slot:9}
function accessories:shop/refresh_bg_child {slot:10}
function accessories:shop/refresh_bg_child {slot:12}
function accessories:shop/refresh_bg_child {slot:14}
function accessories:shop/refresh_bg_child {slot:16}
function accessories:shop/refresh_bg_child {slot:17}
function accessories:shop/refresh_bg_child {slot:18}
function accessories:shop/refresh_bg_child {slot:19}
function accessories:shop/refresh_bg_child {slot:20}
function accessories:shop/refresh_bg_child {slot:21}
function accessories:shop/refresh_bg_child {slot:23}
function accessories:shop/refresh_bg_child {slot:24}
function accessories:shop/refresh_bg_child {slot:25}

# ---- 商品区 ----
# slot 11: 宇航员头盔 (3 绿宝石)
execute if items block -9 69 -9 container.11 * unless items block -9 69 -9 container.11 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:11}
item replace block -9 69 -9 container.11 with \
    minecraft:glass[\
        minecraft:custom_data={menu:1,shop:"accessories",buy:"astronaut_helmet"},\
        minecraft:item_name='{"text":"宇航员头盔","color":"aqua","italic":false}',\
        minecraft:lore=[\
            '{"text":"价格: 3 绿宝石","color":"gold","italic":false}',\
            '{"text":"装备在头部","color":"gray","italic":false}'\
        ]\
    ]

# slot 13: 神秘眼镜 (3 绿宝石)
execute if items block -9 69 -9 container.13 * unless items block -9 69 -9 container.13 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:13}
item replace block -9 69 -9 container.13 with \
    minecraft:lead[\
        minecraft:custom_data={menu:1,shop:"accessories",buy:"mysterious_goggles"},\
        minecraft:item_name='{"text":"神秘眼镜","color":"dark_purple","italic":false}',\
        minecraft:lore=[\
            '{"text":"价格: 3 绿宝石","color":"gold","italic":false}',\
            '{"text":"装备在头部","color":"gray","italic":false}'\
        ]\
    ]

# slot 15: 敬请期待
execute if items block -9 69 -9 container.15 * unless items block -9 69 -9 container.15 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:15}
item replace block -9 69 -9 container.15 with \
    minecraft:light_gray_stained_glass_pane[\
        minecraft:custom_data={menu:1,ui:1},\
        minecraft:item_name='{"text":"???","color":"dark_gray","italic":false}',\
        minecraft:lore=[\
            '{"text":"更多饰品即将推出...","color":"gray","italic":false}'\
        ]\
    ]

# ---- 操作区 ----
# slot 22: Dialog 入口
execute if items block -9 69 -9 container.22 * unless items block -9 69 -9 container.22 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:22}
item replace block -9 69 -9 container.22 with \
    minecraft:writable_book[\
        minecraft:custom_data={menu:1,shop:"accessories",buy:"dialog"},\
        minecraft:item_name='{"text":"对话式购买","color":"green","italic":false}',\
        minecraft:lore=[\
            '{"text":"点击以使用 tellraw 对话","color":"gray","italic":false}',\
            '{"text":"无需跑到箱子前","color":"gray","italic":false}'\
        ]\
    ]

# slot 26: 关闭
execute if items block -9 69 -9 container.26 * unless items block -9 69 -9 container.26 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:26}
item replace block -9 69 -9 container.26 with \
    minecraft:barrier[\
        minecraft:custom_data={menu:1,ui:1},\
        minecraft:item_name='{"text":"关闭","color":"red","italic":false}'\
    ]