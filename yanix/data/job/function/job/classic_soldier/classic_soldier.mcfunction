tag @s add classic_soilder

# 清除玩家原有装备
clear @s

# 穿戴装备 (全部加上 kit:1)
item replace entity @s armor.head with \
    minecraft:diamond_helmet[\
        minecraft:enchantments={\
            blast_protection:1\
        },\
        minecraft:custom_data={\
            kit:1\
        }\
    ]

item replace entity @s armor.chest with \
    minecraft:diamond_chestplate[\
        minecraft:enchantments={\
            protection:2\
        },\
        minecraft:custom_data={\
            kit:1\
        }\
    ]

item replace entity @s armor.legs with \
    minecraft:iron_leggings[\
        minecraft:enchantments={\
            fire_protection:1\
        },\
        minecraft:custom_data={\
            kit:1\
        }\
    ]

item replace entity @s armor.feet with \
    minecraft:netherite_boots[\
        minecraft:enchantments={\
            projectile_protection:1\
        },\
        minecraft:custom_data={\
            kit:1\
        }\
    ]

# 发放主副手与背包物品 (全部加上 kit:1)
give @s minecraft:copper_sword[\
    minecraft:enchantments={\
        sharpness:2,\
        knockback:1,\
        mending:1\
    },\
    minecraft:custom_data={\
        kit:1\
    }\
]

give @s minecraft:golden_sword[\
    minecraft:enchantments={\
        sharpness:2,\
        mending:1\
    },\
    minecraft:custom_data={\
        kit:1\
    }\
]

give @s minecraft:iron_sword[\
    minecraft:enchantments={\
        knockback:1,\
        mending:1\
    },\
    minecraft:custom_data={\
        kit:1\
    }\
]

item replace entity @s weapon.offhand with \
    minecraft:shield[\
        minecraft:enchantments={\
            mending:1\
        },\
        minecraft:custom_data={\
            kit:1\
        }\
    ]

give @s minecraft:golden_apple[\
    minecraft:custom_data={\
        kit:1\
    }\
] 10

give @s minecraft:bow[\
    minecraft:enchantments={\
        punch:2\
    },\
    minecraft:custom_data={\
        kit:1\
    }\
]

give @s minecraft:potion[\
    potion_contents={\
        "potion":"strength"\
    },\
    minecraft:custom_data={\
        kit:1\
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
    },\
    minecraft:custom_data={\
        kit:1\
    }\
]

give @s minecraft:wind_charge[\
    minecraft:custom_data={\
        kit:1\
    }\
] 10

give @s minecraft:spectral_arrow[\
    minecraft:custom_data={\
        kit:1\
    }\
] 192

give @s minecraft:experience_bottle[\
    minecraft:custom_data={\
        kit:1\
    }\
] 128

give @s netherite_chestplate[\
    item_name="技能：无畏",\
    item_model="job:skill_fearless",\
    custom_data={\
        kit:1,\
        skill:1,\
        skill_fearless:1\
    }\
]

execute in kitbattle run tp @s 0 85 0

# 清除职业标签，完成发放
tag @s remove classic_soilder
