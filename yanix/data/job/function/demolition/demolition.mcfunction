tag @s add demolition

clear @s

item replace entity @s armor.head with \
    minecraft:diamond_helmet[\
        minecraft:enchantments={\
            blast_protection:4,\
            mending:3\
        }\
    ]

item replace entity @s armor.chest with \
    minecraft:diamond_chestplate[\
        minecraft:enchantments={\
            protection:4,\
            mending:3\
        }\
    ]

item replace entity @s armor.legs with \
    minecraft:diamond_leggings[\
        minecraft:enchantments={\
            protection:2,\
            mending:3\
        }\
    ]

item replace entity @s armor.feet with \
    minecraft:diamond_boots[\
        minecraft:enchantments={\
            protection:2,\
            mending:3\
        }\
    ]

give @s minecraft:totem_of_undying 1

give @s minecraft:wind_charge 64

give @s minecraft:golden_apple 15

give @s minecraft:crossbow\
    [\
        minecraft:enchantments={\
            mending:1,\
            loyalty:1\
        },\
        minecraft:unbreakable={},\
        minecraft:custom_data={\
            cannon:1\
        },\
        minecraft:item_model="job:cannon"\
    ]

give @s minecraft:arrow[\
    custom_data={\
        crystal_arrow:1\
    },\
    item_name='{"text":"水晶箭","color":"aqua"}'\
] 1

execute in kitbattle run tp @s 0 85 0

tag @s add demolition_fighting

tag @s remove demolition