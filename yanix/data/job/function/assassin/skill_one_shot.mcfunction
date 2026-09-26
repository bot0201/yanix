execute \
    as @a[tag=assassin_fighting] \
    if items entity @s weapon.mainhand \
        minecraft:golden_chestplate[\
            item_model="skill_oneshot",\
            item_name="技能：秒杀",\
            custom_data={\
                kit:1,\
                skill:1,\
                skill_oneshot:1\
            }\
        ] \
    unless entity @e[\
        type=armor_stand,\
        tag=skill_oneshot,\
        distance=..1\
    ] \
    run summon armor_stand ~ ~ ~ \
        {\
            Invulnerable:1b,\
            Invisible:1b,\
            NoGravity:1b,\
            Tags:[\
                "skill_oneshot"\
            ]\
        }

execute \
    as @e[\
        type=armor_stand,\
        tag=skill_oneshot\
    ] \
    if items entity @s armor.chest \
        minecraft:golden_chestplate[\
            item_model="skill_oneshot",\
            item_name="技能：秒杀",\
            custom_data={\
                kit:1,\
                skill:1,\
                skill_oneshot:1\
            }\
        ] \
    at @s \
    run give @n[type=player] minecraft:golden_axe[\
        minecraft:enchantments={\
            sharpness:114\
        },\
        minecraft:max_damage=1,\
        minecraft:item_name="秒人虎",\
        minecraft:repairable={\
            items:bedrock\
        }\
    ]

execute \
    as @e[\
        type=armor_stand,\
        tag=skill_oneshot\
    ] \
    if items entity @s armor.chest \
        minecraft:golden_chestplate[\
            item_model="skill_oneshot",\
            item_name="技能：秒杀",\
            custom_data={\
                kit:1,\
                skill:1,\
                skill_oneshot:1\
            }\
        ] \
    run tag @s add skill_triggered

execute as @e[\
    type=armor_stand,\
    tag=skill_triggered\
] \
    run item replace entity @s armor.chest with air

execute as @e[\
    type=armor_stand,\
    tag=skill_triggered\
] \
    run kill @s