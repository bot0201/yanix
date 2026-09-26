tag @s add mage

clear @s

item replace entity @s armor.head with \
    minecraft:chainmail_helmet[\
        minecraft:enchantments={\
            protection:2,\
            mending:3\
        }\
    ]

item replace entity @s armor.chest with \
    minecraft:golden_chestplate[\
        minecraft:enchantments={\
            blast_protection:1,\
            mending:3\
        }\
    ]

item replace entity @s armor.legs with \
    minecraft:golden_leggings[\
        minecraft:enchantments={\
            projectile_protection:1,\
            mending:3\
        }\
    ]

item replace entity @s armor.feet with \
    minecraft:golden_boots[\
        minecraft:enchantments={\
            fire_protection:1,\
            mending:3\
        }\
    ]

give @s minecraft:potion[\
    minecraft:potion_contents={\
        potion:"minecraft:leaping"\
    }\
] 2

give @s minecraft:splash_potion[\
    minecraft:potion_contents={\
        potion:"minecraft:swiftness",\
        custom_effects:[\
            {\
                id:"minecraft:speed",\
                amplifier:1\
            }\
        ]\
    }\
] 1

give @s minecraft:potion[\
    minecraft:potion_contents={\
        potion:"minecraft:swiftness"\
    }\
] 1

give @s minecraft:lingering_potion[\
    minecraft:potion_contents={\
        potion:"minecraft:wind_charged"\
    }\
] 2

give @s minecraft:splash_potion[\
    minecraft:potion_contents={\
        custom_effects:[\
            {\
                id:"minecraft:instant_health",\
                amplifier:1\
            }\
        ]\
    }\
] 2

give @s minecraft:lingering_potion[\
    minecraft:potion_contents={\
        custom_effects:[\
            {\
                id:"minecraft:instant_health",\
                amplifier:1\
            }\
        ]\
    }\
] 1

give @s minecraft:potion[\
    minecraft:potion_contents={\
        custom_effects:[\
            {\
                id:"minecraft:instant_health",\
                amplifier:1\
            }\
        ]\
    }\
] 1

give @s minecraft:lingering_potion[\
    minecraft:potion_contents={\
        custom_effects:[\
            {\
                id:"minecraft:instant_damage",\
                amplifier:0\
            }\
        ]\
    }\
] 2

give @s minecraft:potion[\
    minecraft:potion_contents={\
        potion:"minecraft:strength"\
    }\
] 1

give @s minecraft:splash_potion[\
    minecraft:potion_contents={\
        potion:"minecraft:strength"\
    }\
] 2

give @s minecraft:lingering_potion[\
    minecraft:potion_contents={\
        potion:"minecraft:poison",\
        custom_effects:[\
            {\
                id:"minecraft:poison",\
                amplifier:1\
            }\
        ]\
    }\
] 2

give @s minecraft:lingering_potion[\
    minecraft:potion_contents={\
        potion:"minecraft:regeneration"\
    }\
] 2

give @s minecraft:lingering_potion[\
    minecraft:potion_contents={\
        potion:"minecraft:weakness"\
    }\
] 2

give @s minecraft:milk_bucket 1

give @s minecraft:golden_apple 8

execute in kitbattle run tp @s 0 85 0

tag @s remove mage
