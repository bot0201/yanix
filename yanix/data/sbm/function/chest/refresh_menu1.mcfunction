# ========================================
# SBM 箱子菜单 - 第1页
# ========================================

# ---- 背景板 ----
# slot 0
execute if items block -10 69 -9 container.0 *[*] unless items block -10 69 -9 container.0 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:0}
item replace block -10 69 -9 container.0 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
# slot 1
execute if items block -10 69 -9 container.1 *[*] unless items block -10 69 -9 container.1 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:1}
item replace block -10 69 -9 container.1 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
# slot 2
execute if items block -10 69 -9 container.2 *[*] unless items block -10 69 -9 container.2 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:2}
item replace block -10 69 -9 container.2 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
# slot 3
execute if items block -10 69 -9 container.3 *[*] unless items block -10 69 -9 container.3 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:3}
item replace block -10 69 -9 container.3 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
# slot 4
execute if items block -10 69 -9 container.4 *[*] unless items block -10 69 -9 container.4 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:4}
item replace block -10 69 -9 container.4 with minecraft:yellow_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name='{"text":"SBM 菜单 - 第1页","color":"gold"}']
# slot 5
execute if items block -10 69 -9 container.5 *[*] unless items block -10 69 -9 container.5 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:5}
item replace block -10 69 -9 container.5 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
# slot 6
execute if items block -10 69 -9 container.6 *[*] unless items block -10 69 -9 container.6 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:6}
item replace block -10 69 -9 container.6 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
# slot 7
execute if items block -10 69 -9 container.7 *[*] unless items block -10 69 -9 container.7 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:7}
item replace block -10 69 -9 container.7 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
# slot 8
execute if items block -10 69 -9 container.8 *[*] unless items block -10 69 -9 container.8 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:8}
item replace block -10 69 -9 container.8 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]

# ---- 第1页物品 ----
# slot 9: 下界之星
execute if items block -10 69 -9 container.9 *[*] unless items block -10 69 -9 container.9 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:9}
item replace block -10 69 -9 container.9 with minecraft:nether_star[minecraft:custom_data={menu:1b,sbm_action:"give_nether_star"},minecraft:item_name='{"text":"领取下界之星","color":"light_purple","italic":false}']
# slot 10: 钻石剑
execute if items block -10 69 -9 container.10 *[*] unless items block -10 69 -9 container.10 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:10}
item replace block -10 69 -9 container.10 with minecraft:diamond_sword[minecraft:custom_data={menu:1b,sbm_action:"give_diamond_sword"},minecraft:item_name='{"text":"领取钻石剑","color":"aqua","italic":false}']
# slot 11: 盾牌
execute if items block -10 69 -9 container.11 *[*] unless items block -10 69 -9 container.11 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:11}
item replace block -10 69 -9 container.11 with minecraft:shield[minecraft:custom_data={menu:1b,sbm_action:"give_shield"},minecraft:item_name='{"text":"领取盾牌","color":"dark_gray","italic":false}']
# slot 12: 弓
execute if items block -10 69 -9 container.12 *[*] unless items block -10 69 -9 container.12 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:12}
item replace block -10 69 -9 container.12 with minecraft:bow[minecraft:custom_data={menu:1b,sbm_action:"give_bow"},minecraft:item_name='{"text":"领取弓","color":"gold","italic":false}']
# slot 13: 弩
execute if items block -10 69 -9 container.13 *[*] unless items block -10 69 -9 container.13 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:13}
item replace block -10 69 -9 container.13 with minecraft:crossbow[minecraft:custom_data={menu:1b,sbm_action:"give_crossbow"},minecraft:item_name='{"text":"领取弩","color":"red","italic":false}']
# slot 14: 三叉戟
execute if items block -10 69 -9 container.14 *[*] unless items block -10 69 -9 container.14 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:14}
item replace block -10 69 -9 container.14 with minecraft:trident[minecraft:custom_data={menu:1b,sbm_action:"give_trident"},minecraft:item_name='{"text":"领取三叉戟","color":"aqua","italic":false}']
# slot 15: 不死图腾
execute if items block -10 69 -9 container.15 *[*] unless items block -10 69 -9 container.15 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:15}
item replace block -10 69 -9 container.15 with minecraft:totem_of_undying[minecraft:custom_data={menu:1b,sbm_action:"give_totem"},minecraft:item_name='{"text":"领取不死图腾","color":"yellow","italic":false}']
# slot 16: 关闭
execute if items block -10 69 -9 container.16 *[*] unless items block -10 69 -9 container.16 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:16}
item replace block -10 69 -9 container.16 with minecraft:barrier[minecraft:custom_data={menu:1b,sbm_action:"close"},minecraft:item_name='{"text":"关闭","color":"red","italic":false}']
# slot 17: 关闭
execute if items block -10 69 -9 container.17 *[*] unless items block -10 69 -9 container.17 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:17}
item replace block -10 69 -9 container.17 with minecraft:barrier[minecraft:custom_data={menu:1b,sbm_action:"close"},minecraft:item_name='{"text":"关闭","color":"red","italic":false}']

# ---- 导航 ----
# slot 22: 主页
execute if items block -10 69 -9 container.22 *[*] unless items block -10 69 -9 container.22 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:22}
item replace block -10 69 -9 container.22 with minecraft:arrow[minecraft:custom_data={menu:1b,sbm_action:"page_home"},minecraft:item_name='{"text":"← 主页","color":"green","italic":false}']
# slot 23: 第1页
execute if items block -10 69 -9 container.23 *[*] unless items block -10 69 -9 container.23 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:23}
item replace block -10 69 -9 container.23 with minecraft:compass[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name='{"text":"第1页","color":"yellow","italic":false}']
# slot 24: 第2页
execute if items block -10 69 -9 container.24 *[*] unless items block -10 69 -9 container.24 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:24}
item replace block -10 69 -9 container.24 with minecraft:arrow[minecraft:custom_data={menu:1b,sbm_action:"page_menu2"},minecraft:item_name='{"text":"→ 第2页","color":"yellow","italic":false}']
# slot 26: 关闭
execute if items block -10 69 -9 container.26 *[*] unless items block -10 69 -9 container.26 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:26}
item replace block -10 69 -9 container.26 with minecraft:barrier[minecraft:custom_data={menu:1b,sbm_action:"close"},minecraft:item_name='{"text":"关闭","color":"red","italic":false}']

# 剩余背景
execute if items block -10 69 -9 container.18 *[*] unless items block -10 69 -9 container.18 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:18}
item replace block -10 69 -9 container.18 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.19 *[*] unless items block -10 69 -9 container.19 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:19}
item replace block -10 69 -9 container.19 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.20 *[*] unless items block -10 69 -9 container.20 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:20}
item replace block -10 69 -9 container.20 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.21 *[*] unless items block -10 69 -9 container.21 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:21}
item replace block -10 69 -9 container.21 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]
execute if items block -10 69 -9 container.25 *[*] unless items block -10 69 -9 container.25 *[minecraft:custom_data~{menu:1b}] positioned -10 69 -9 run function sbm:chest/drop_slot {slot:25}
item replace block -10 69 -9 container.25 with minecraft:light_gray_stained_glass_pane[minecraft:custom_data={menu:1b,ui:1},minecraft:item_name="背景板",minecraft:tooltip_display={hide_tooltip:true}]