# 经典战士的无畏技能
execute \
    as @a[tag=classic_soilder] \
    at @s \
    if items entity @s weapon.mainhand \
        netherite_chestplate[\
            custom_data={\
                kit:1,\
                skill:1,\
                skill_fearless:1\
            }\
        ] \
    run tp @e[\
        type=armor_stand,\
        nbt={\
            Invulnerable:1b,\
            Invisible:1b,\
            NoGravity:1b\
        },\
        tag=holding_skill_armor_stand\
    ] @s

execute \
    as @a[tag=classic_soilder] \
    at @s \
    if items entity @s weapon.mainhand \
        netherite_chestplate[\
            custom_data={\
                kit:1,\
                skill:1,\
                skill_fearless:1\
            }\
        ] \
    unless entity @e[\
        type=armor_stand,\
        distance=..1\
    ] \
    run summon armor_stand ~ ~ ~ \
        {\
            Invulnerable:1b,\
            Invisible:1b,\
            NoGravity:1b,\
            Tags:[\
                "holding_skill_armor_stand"\
            ]\
        }

execute \
    as @n[\
        distance=..1,\
        type=armor_stand,\
        tag=holding_skill_armor_stand\
    ] \
    at @s \
    if items entity @s armor.chest \
        netherite_chestplate[\
            custom_data={\
                kit:1,\
                skill:1,\
                skill_fearless:1\
            }\
        ] \
    run effect give @p minecraft:resistance 6 5 true

execute \
    as @n[\
        distance=..1,\
        type=armor_stand,\
        tag=holding_skill_armor_stand\
    ] \
    at @s \
    if items entity @s armor.chest \
        netherite_chestplate[\
            custom_data={\
                kit:1,\
                skill:1,\
                skill_fearless:1\
            }\
        ] \
    run clear @p netherite_chestplate[\
        custom_data={\
            kit:1,\
            skill:1,\
            skill_fearless:1\
        }\
    ]

execute \
    as @n[\
        distance=..1,\
        type=armor_stand,\
        tag=holding_skill_armor_stand\
    ] \
    at @p[tag=classic_soilder] \
    if items entity @s armor.chest \
        netherite_chestplate[\
            custom_data={\
                kit:1,\
                skill:1,\
                skill_fearless:1\
            }\
        ] \
    run function job:classic_soldier/classic_soldier_skill_handler_triggered_child