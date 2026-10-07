# ========================================
# 饰品商店 - 箱子菜单刷新 (-9 69 -9)
# 每 3 tick 刷新箱子内容
# ========================================

# ---- 背景板 (0-26, 全部 27 格) ----
execute if items block -9 69 -9 container.0 *[*] unless items block -9 69 -9 container.0 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:0}
item replace block -9 69 -9 container.0 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.1 *[*] unless items block -9 69 -9 container.1 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:1}
item replace block -9 69 -9 container.1 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.2 *[*] unless items block -9 69 -9 container.2 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:2}
item replace block -9 69 -9 container.2 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.3 *[*] unless items block -9 69 -9 container.3 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:3}
item replace block -9 69 -9 container.3 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.4 *[*] unless items block -9 69 -9 container.4 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:4}
item replace block -9 69 -9 container.4 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.5 *[*] unless items block -9 69 -9 container.5 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:5}
item replace block -9 69 -9 container.5 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.6 *[*] unless items block -9 69 -9 container.6 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:6}
item replace block -9 69 -9 container.6 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.7 *[*] unless items block -9 69 -9 container.7 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:7}
item replace block -9 69 -9 container.7 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.8 *[*] unless items block -9 69 -9 container.8 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:8}
item replace block -9 69 -9 container.8 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.9 *[*] unless items block -9 69 -9 container.9 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:9}
item replace block -9 69 -9 container.9 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.10 *[*] unless items block -9 69 -9 container.10 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:10}
item replace block -9 69 -9 container.10 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.12 *[*] unless items block -9 69 -9 container.12 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:12}
item replace block -9 69 -9 container.12 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.14 *[*] unless items block -9 69 -9 container.14 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:14}
item replace block -9 69 -9 container.14 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.16 *[*] unless items block -9 69 -9 container.16 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:16}
item replace block -9 69 -9 container.16 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.17 *[*] unless items block -9 69 -9 container.17 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:17}
item replace block -9 69 -9 container.17 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.18 *[*] unless items block -9 69 -9 container.18 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:18}
item replace block -9 69 -9 container.18 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.19 *[*] unless items block -9 69 -9 container.19 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:19}
item replace block -9 69 -9 container.19 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.20 *[*] unless items block -9 69 -9 container.20 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:20}
item replace block -9 69 -9 container.20 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.21 *[*] unless items block -9 69 -9 container.21 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:21}
item replace block -9 69 -9 container.21 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.23 *[*] unless items block -9 69 -9 container.23 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:23}
item replace block -9 69 -9 container.23 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.24 *[*] unless items block -9 69 -9 container.24 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:24}
item replace block -9 69 -9 container.24 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -9 69 -9 container.25 *[*] unless items block -9 69 -9 container.25 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:25}
item replace block -9 69 -9 container.25 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]

# ---- 商品区 ----
# slot 11: 宇航员头盔 (3 绿宝石)
execute if items block -9 69 -9 container.11 *[*] unless items block -9 69 -9 container.11 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:11}
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
execute if items block -9 69 -9 container.13 *[*] unless items block -9 69 -9 container.13 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:13}
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
execute if items block -9 69 -9 container.15 *[*] unless items block -9 69 -9 container.15 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:15}
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
execute if items block -9 69 -9 container.22 *[*] unless items block -9 69 -9 container.22 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:22}
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
execute if items block -9 69 -9 container.26 *[*] unless items block -9 69 -9 container.26 *[custom_data~{menu:1}] positioned -9 69 -9 run function sbm:chest/drop_slot {slot:26}
item replace block -9 69 -9 container.26 with \
    minecraft:barrier[\
        minecraft:custom_data={menu:1,ui:1},\
        minecraft:item_name='{"text":"关闭","color":"red","italic":false}'\
    ]