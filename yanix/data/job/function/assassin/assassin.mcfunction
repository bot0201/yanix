tag @s add assassin

clear @s

execute as @s run function job:assassin/put_on_clothes

give @s minecraft:diamond_axe[\
    minecraft:enchantments={\
        sharpness:2,\
        knockback:1,\
        mending:3\
    }\
]

give @s minecraft:diamond_sword[\
    minecraft:enchantments={\
        sharpness:2,\
        knockback:1,\
        mending:3\
    }\
]

give @s minecraft:golden_axe[\
    minecraft:enchantments={\
        sharpness:114\
    },\
    minecraft:max_damage=1,\
    minecraft:item_name="秒人虎",\
    minecraft:repairable={\
        items:bedrock\
    }\
] 2

give @s minecraft:golden_apple 8

give @s minecraft:cooked_beef 10

give @s minecraft:wind_charge 10

give @s minecraft:shears[\
    minecraft:enchantments={\
        vanishing_curse:1,\
        mending:3\
    },\
    custom_data={\
        assassin:1\
    }\
]

give @s minecraft:golden_chestplate[\
    item_model="job:skill_one_shot",\
    item_name="技能：秒杀",\
    custom_data={\
        kit:1,\
        skill:1,\
        skill_oneshot:1\
    }\
]

execute in kitbattle run tp @s 0 85 0

tag @s add assassin_fighting

tag @s remove assassin