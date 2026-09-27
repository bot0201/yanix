# ========================================
# 饰品商店 - 箱子菜单刷新 (-9 69 -9)
# 每 tick 刷新箱子内容
# ========================================

# ---- 背景板 (0-26, 全部 27 格) ----
item replace block -9 69 -9 container.0 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.1 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.2 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.3 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.4 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.5 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.6 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.7 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.8 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.9 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.10 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.11 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.12 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.13 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.14 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.15 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.16 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.17 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.18 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.19 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.20 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.21 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.22 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.23 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.24 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.25 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
item replace block -9 69 -9 container.26 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]

# ---- 商品区 ----
# slot 11: 宇航员头盔 (3 绿宝石)
item replace block -9 69 -9 container.11 with \
    minecraft:glass[\
        minecraft:custom_data={shop:"accessories",buy:"astronaut_helmet"},\
        minecraft:item_name='{"text":"宇航员头盔","color":"aqua","italic":false}',\
        minecraft:lore=[\
            '{"text":"价格: 3 绿宝石","color":"gold","italic":false}',\
            '{"text":"装备在头部","color":"gray","italic":false}'\
        ]\
    ]

# slot 13: 神秘眼镜 (3 绿宝石)
item replace block -9 69 -9 container.13 with \
    minecraft:lead[\
        minecraft:custom_data={shop:"accessories",buy:"mysterious_goggles"},\
        minecraft:item_name='{"text":"神秘眼镜","color":"dark_purple","italic":false}',\
        minecraft:lore=[\
            '{"text":"价格: 3 绿宝石","color":"gold","italic":false}',\
            '{"text":"装备在头部","color":"gray","italic":false}'\
        ]\
    ]

# slot 15: 敬请期待
item replace block -9 69 -9 container.15 with \
    minecraft:light_gray_stained_glass_pane[\
        minecraft:custom_data={ui:1},\
        minecraft:item_name='{"text":"???","color":"dark_gray","italic":false}',\
        minecraft:lore=[\
            '{"text":"更多饰品即将推出...","color":"gray","italic":false}'\
        ]\
    ]

# ---- 操作区 ----
# slot 22: Dialog 入口
item replace block -9 69 -9 container.22 with \
    minecraft:writable_book[\
        minecraft:custom_data={shop:"accessories",buy:"dialog"},\
        minecraft:item_name='{"text":"对话式购买","color":"green","italic":false}',\
        minecraft:lore=[\
            '{"text":"点击以使用 tellraw 对话","color":"gray","italic":false}',\
            '{"text":"无需跑到箱子前","color":"gray","italic":false}'\
        ]\
    ]

# slot 26: 关闭
item replace block -9 69 -9 container.26 with \
    minecraft:barrier[\
        minecraft:custom_data={ui:1},\
        minecraft:item_name='{"text":"关闭","color":"red","italic":false}'\
    ]