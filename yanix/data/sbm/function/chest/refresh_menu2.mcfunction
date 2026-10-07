# ========================================
# SBM 箱子菜单 - 第2页
# 位置: -10 69 -9
# ========================================

# ---- 背景板 ----
execute if items block -10 69 -9 container.0 *[*] unless items block -10 69 -9 container.0 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:0}
item replace block -10 69 -9 container.0 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.1 *[*] unless items block -10 69 -9 container.1 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:1}
item replace block -10 69 -9 container.1 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.2 *[*] unless items block -10 69 -9 container.2 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:2}
item replace block -10 69 -9 container.2 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.3 *[*] unless items block -10 69 -9 container.3 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:3}
item replace block -10 69 -9 container.3 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.4 *[*] unless items block -10 69 -9 container.4 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:4}
item replace block -10 69 -9 container.4 with minecraft:orange_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name='{"text":"SBM 菜单 - 第2页","color":"gold"}']
execute if items block -10 69 -9 container.5 *[*] unless items block -10 69 -9 container.5 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:5}
item replace block -10 69 -9 container.5 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.6 *[*] unless items block -10 69 -9 container.6 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:6}
item replace block -10 69 -9 container.6 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.7 *[*] unless items block -10 69 -9 container.7 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:7}
item replace block -10 69 -9 container.7 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.8 *[*] unless items block -10 69 -9 container.8 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:8}
item replace block -10 69 -9 container.8 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]

# ---- 第2页物品 ----
# slot 9: 附魔金苹果
execute if items block -10 69 -9 container.9 *[*] unless items block -10 69 -9 container.9 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:9}
item replace block -10 69 -9 container.9 with minecraft:enchanted_golden_apple[minecraft:custom_data={menu:1,sbm_action:"give_enchanted_golden_apple"},minecraft:item_name='{"text":"领取附魔金苹果","color":"gold","italic":false}']
# slot 10: 鞘翅
execute if items block -10 69 -9 container.10 *[*] unless items block -10 69 -9 container.10 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:10}
item replace block -10 69 -9 container.10 with minecraft:elytra[minecraft:custom_data={menu:1,sbm_action:"give_elytra"},minecraft:item_name='{"text":"领取鞘翅","color":"dark_purple","italic":false}']
# slot 11: 三叉戟
execute if items block -10 69 -9 container.11 *[*] unless items block -10 69 -9 container.11 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:11}
item replace block -10 69 -9 container.11 with minecraft:trident[minecraft:custom_data={menu:1,sbm_action:"give_trident"},minecraft:item_name='{"text":"领取三叉戟","color":"aqua","italic":false}']
# slot 12: 烟花火箭
execute if items block -10 69 -9 container.12 *[*] unless items block -10 69 -9 container.12 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:12}
item replace block -10 69 -9 container.12 with minecraft:firework_rocket[minecraft:custom_data={menu:1,sbm_action:"give_firework"},minecraft:item_name='{"text":"领取烟花火箭","color":"light_purple","italic":false}']
# slot 13: 不死图腾
execute if items block -10 69 -9 container.13 *[*] unless items block -10 69 -9 container.13 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:13}
item replace block -10 69 -9 container.13 with minecraft:totem_of_undying[minecraft:custom_data={menu:1,sbm_action:"give_totem"},minecraft:item_name='{"text":"领取不死图腾","color":"gold","italic":false}']
# slot 14: 经验瓶
execute if items block -10 69 -9 container.14 *[*] unless items block -10 69 -9 container.14 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:14}
item replace block -10 69 -9 container.14 with minecraft:experience_bottle[minecraft:custom_data={menu:1,sbm_action:"give_xp_bottle"},minecraft:item_name='{"text":"领取经验瓶","color":"green","italic":false}']
# slot 15: 潜影盒
execute if items block -10 69 -9 container.15 *[*] unless items block -10 69 -9 container.15 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:15}
item replace block -10 69 -9 container.15 with minecraft:shulker_box[minecraft:custom_data={menu:1,sbm_action:"give_shulker_box"},minecraft:item_name='{"text":"领取潜影盒","color":"dark_purple","italic":false}']
# slot 16: 铁砧
execute if items block -10 69 -9 container.16 *[*] unless items block -10 69 -9 container.16 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:16}
item replace block -10 69 -9 container.16 with minecraft:anvil[minecraft:custom_data={menu:1,sbm_action:"give_anvil"},minecraft:item_name='{"text":"领取铁砧","color":"dark_gray","italic":false}']
# slot 17: 关闭
execute if items block -10 69 -9 container.17 *[*] unless items block -10 69 -9 container.17 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:17}
item replace block -10 69 -9 container.17 with minecraft:barrier[minecraft:custom_data={menu:1,sbm_action:"close"},minecraft:item_name='{"text":"关闭","color":"red","italic":false}']

# ---- 导航区 ----
# slot 22: 主页
execute if items block -10 69 -9 container.22 *[*] unless items block -10 69 -9 container.22 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:22}
item replace block -10 69 -9 container.22 with \
    minecraft:compass[\
        minecraft:custom_data={menu:1,sbm_action:"page_home"},\
        minecraft:item_name='{"text":"← 主页","color":"green","italic":false}'\
    ]
# slot 23: 第1页
execute if items block -10 69 -9 container.23 *[*] unless items block -10 69 -9 container.23 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:23}
item replace block -10 69 -9 container.23 with \
    minecraft:arrow[\
        minecraft:custom_data={menu:1,sbm_action:"page_menu1"},\
        minecraft:item_name='{"text":"← 第1页","color":"yellow","italic":false}'\
    ]
# slot 24: 第2页
execute if items block -10 69 -9 container.24 *[*] unless items block -10 69 -9 container.24 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:24}
item replace block -10 69 -9 container.24 with \
    minecraft:arrow[\
        minecraft:custom_data={menu:1,ui:1},\
        minecraft:item_name='{"text":"第2页","color":"yellow","italic":false}'\
    ]
# slot 26: 关闭
execute if items block -10 69 -9 container.26 *[*] unless items block -10 69 -9 container.26 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:26}
item replace block -10 69 -9 container.26 with minecraft:barrier[minecraft:custom_data={menu:1,sbm_action:"close"},minecraft:item_name='{"text":"关闭","color":"red","italic":false}']

# 剩余背景 (18-21, 25)
execute if items block -10 69 -9 container.18 *[*] unless items block -10 69 -9 container.18 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:18}
item replace block -10 69 -9 container.18 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.19 *[*] unless items block -10 69 -9 container.19 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:19}
item replace block -10 69 -9 container.19 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.20 *[*] unless items block -10 69 -9 container.20 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:20}
item replace block -10 69 -9 container.20 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.21 *[*] unless items block -10 69 -9 container.21 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:21}
item replace block -10 69 -9 container.21 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.25 *[*] unless items block -10 69 -9 container.25 *[custom_data~{menu:1}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:25}
item replace block -10 69 -9 container.25 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]