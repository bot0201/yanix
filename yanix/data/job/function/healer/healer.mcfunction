tag @s add healer

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

execute in kitbattle run tp @s 0 85 0

tag @s remove healer