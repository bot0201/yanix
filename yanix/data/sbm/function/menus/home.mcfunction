# PLG悬浮菜单 主页 - 原作者: 兰那梛_nano

summon text_display ^ ^1.2 ^0 {Tags:["menu_title"],text:{text:"PLG悬浮菜单",color:"#33FF88",font:"minecraft:default"},transformation:{translation:[0,0,0],scale:[0.8,0.8,0.8],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},billboard:"center"}

summon item_display ^-0.8 ^0.8 ^0 {Tags:["menu_icon","icon_1"],item:{id:"minecraft:red_bed",count:1},item_display:"gui",transformation:{translation:[0,0,0],scale:[0.6,0.6,0.6],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
summon item_display ^ ^0.8 ^0 {Tags:["menu_icon","icon_2"],item:{id:"minecraft:conduit",count:1},item_display:"gui",transformation:{translation:[0,0,0],scale:[0.6,0.6,0.6],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
summon item_display ^0.8 ^0.8 ^0 {Tags:["menu_icon","icon_3"],item:{id:"minecraft:grass_block",count:1},item_display:"gui",transformation:{translation:[0,0,0],scale:[0.6,0.6,0.6],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
summon item_display ^-0.8 ^ ^0 {Tags:["menu_icon","icon_4"],item:{id:"minecraft:diamond_sword",count:1},item_display:"gui",transformation:{translation:[0,0,0],scale:[0.6,0.6,0.6],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
summon item_display ^ ^ ^0 {Tags:["menu_icon","icon_5"],item:{id:"minecraft:leather_boots",count:1},item_display:"gui",transformation:{translation:[0,0,0],scale:[0.6,0.6,0.6],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
summon item_display ^0.8 ^ ^0 {Tags:["menu_icon","icon_6"],item:{id:"minecraft:barrier",count:1},item_display:"gui",transformation:{translation:[0,0,0],scale:[0.6,0.6,0.6],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
summon item_display ^-0.8 ^-0.8 ^0 {Tags:["menu_icon","icon_7"],item:{id:"minecraft:barrier",count:1},item_display:"gui",transformation:{translation:[0,0,0],scale:[0.6,0.6,0.6],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
summon item_display ^ ^-0.8 ^0 {Tags:["menu_icon","icon_8"],item:{id:"minecraft:barrier",count:1},item_display:"gui",transformation:{translation:[0,0,0],scale:[0.6,0.6,0.6],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
summon item_display ^0.8 ^-0.8 ^0 {Tags:["menu_icon","icon_9"],item:{id:"minecraft:barrier",count:1},item_display:"gui",transformation:{translation:[0,0,0],scale:[0.6,0.6,0.6],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}

execute \
    as @e[type=item_display,tag=menu_icon,distance=..5] \
    run data modify entity @s Rotation set from entity @p Rotation

schedule function sbm:animation/home 1t