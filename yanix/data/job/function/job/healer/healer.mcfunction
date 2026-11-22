tag @s add healer

# debug 通知（持有 d_debug_job / a_debug 标签者可见）
function lib:tools/show_debug {\
    module:"job",\
    module_full_name:"\"职业战争\"",\
    content:"\"玩家选择了职业：治疗师\""\
}

clear @s

item replace entity @s armor.head with \
    minecraft:golden_helmet[\
        minecraft:enchantments={\
            protection:2,\
            mending:3\
        }\
    ]

item replace entity @s armor.chest with \
    minecraft:diamond_chestplate[\
        minecraft:enchantments={\
            protection:2,\
            mending:3\
        }\
    ]

item replace entity @s armor.legs with \
    minecraft:iron_leggings[\
        minecraft:enchantments={\
            protection:2,\
            mending:3\
        }\
    ]

item replace entity @s armor.feet with \
    minecraft:iron_boots[\
        minecraft:enchantments={\
            protection:2,\
            mending:3\
        }\
    ]

give @s minecraft:potion[\
    minecraft:potion_contents={\
        custom_effects:[\
            {\
                id:"minecraft:instant_health",\
                amplifier:1\
            }\
        ]\
    }\
] 13

give @s minecraft:splash_potion[\
    minecraft:potion_contents={\
        custom_effects:[\
            {\
                id:"minecraft:instant_health",\
                amplifier:1\
            }\
        ]\
    }\
] 7

give @s minecraft:lingering_potion[\
    minecraft:potion_contents={\
        custom_effects:[\
            {\
                id:"minecraft:instant_health",\
                amplifier:1\
            }\
        ]\
    }\
] 3

execute in minecraft:kitbattle run tp @s 0 85 0

tag @s remove healer
