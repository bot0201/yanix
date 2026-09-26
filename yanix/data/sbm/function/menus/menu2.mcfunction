summon text_display ^-0.5 ^0.5 ^1 {Tags:["menu_bg"],text:'{"text":"█","color":"#333333","font":"minecraft:default"}',transformation:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20],billboard:"center"}
summon text_display ^ ^0.5 ^1 {Tags:["menu_title"],text:'{"text":"菜单 - 第2页","color":"#F5A623","font":"minecraft:default"}',transformation:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2],billboard:"center"}

summon item_display ^-0.3 ^0.3 ^1 {Tags:["menu_icon","icon_1"],item:{id:"minecraft:arrow",count:1},transformation:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}
summon item_display ^ ^0.3 ^1 {Tags:["menu_icon","icon_2"],item:{id:"minecraft:enchanted_golden_apple",count:1},transformation:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}
summon item_display ^0.3 ^0.3 ^1 {Tags:["menu_icon","icon_3"],item:{id:"minecraft:elytra",count:1},transformation:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}
summon item_display ^-0.3 ^ ^1 {Tags:["menu_icon","icon_4"],item:{id:"minecraft:firework_rocket",count:1},transformation:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}
summon item_display ^ ^ ^1 {Tags:["menu_icon","icon_5"],item:{id:"minecraft:experience_bottle",count:1},transformation:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}
summon item_display ^0.3 ^ ^1 {Tags:["menu_icon","icon_6"],item:{id:"minecraft:ender_chest",count:1},transformation:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}
summon item_display ^-0.3 ^-0.3 ^1 {Tags:["menu_icon","icon_7"],item:{id:"minecraft:crafting_table",count:1},transformation:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}
summon item_display ^ ^-0.3 ^1 {Tags:["menu_icon","icon_8"],item:{id:"minecraft:anvil",count:1},transformation:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}
summon item_display ^0.3 ^-0.3 ^1 {Tags:["menu_icon","icon_9"],item:{id:"minecraft:barrier",count:1},transformation:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}

schedule function sbm:animation/menu2 1t