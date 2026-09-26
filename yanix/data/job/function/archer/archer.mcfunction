tag @s add archer

# 清除玩家原有装备（精准清除带有kit:1标记的物品，防止误删其他物品）
clear @s *[\
    minecraft:custom_data~{\
        kit:1\
    }\
]

# 穿戴装备 (全部加上 kit:1)
item replace entity @s armor.head with \
    minecraft:copper_helmet[\
        minecraft:enchantments={\
            blast_protection:1\
        },\
        minecraft:custom_data={\
            kit:1\
        }\
    ]

item replace entity @s armor.chest with \
    minecraft:copper_chestplate[\
        minecraft:enchantments={\
            protection:2\
        },\
        minecraft:custom_data={\
            kit:1\
        }\
    ]

item replace entity @s armor.legs with \
    minecraft:copper_leggings[\
        minecraft:enchantments={\
            fire_protection:1\
        },\
        minecraft:custom_data={\
            kit:1\
        }\
    ]

item replace entity @s armor.feet with \
    minecraft:copper_boots[\
        minecraft:enchantments={\
            projectile_protection:1\
        },\
        minecraft:custom_data={\
            kit:1\
        }\
    ]

# 发放主副手与背包物品 (全部加上 kit:1)
give @s minecraft:bow\
    [\
        minecraft:enchantments={\
            unbreaking:3,\
            punch:1,\
            flame:1,\
            piercing:2\
        },\
        minecraft:custom_data={\
            kit:1\
        }\
    ]

give @s bow[\
    item_model="job:pearl_bow",\
    item_name="传送弓",\
    custom_data={\
        kit:1,\
        bow:tp\
    }\
]

give @s minecraft:iron_sword\
    [\
        minecraft:enchantments={\
            knockback:1,\
            mending:1\
        },\
        minecraft:custom_data={\
            kit:1\
        }\
    ]

give @s minecraft:spectral_arrow\
    [\
        minecraft:custom_data={\
            kit:1\
        }\
    ] 64

give @s minecraft:arrow\
    [\
        minecraft:custom_data={\
            kit:1\
        }\
    ] 768

# 发放药水箭

# 力量药水箭 *64
give @s minecraft:tipped_arrow\
    [\
        minecraft:potion_contents={\
            potion:"minecraft:strength"\
        }\
    ] 64

# 生命恢复药水箭 *64
give @s minecraft:tipped_arrow\
    [\
        minecraft:potion_contents={\
            potion:"minecraft:regeneration"\
        }\
    ] 64

# 风弹 *64
give @s minecraft:wind_charge 64

# 速度药水箭 *128
give @s minecraft:tipped_arrow\
    [\
        minecraft:potion_contents={\
            potion:"minecraft:swiftness"\
        }\
    ] 128

# 满载装药的烟花火箭（苦力怕/普通烟火之星） *64
give @s minecraft:firework_rocket\
    [\
        minecraft:fireworks={\
            flight_duration:3,\
            explosions:[\
                {\
                    shape:"creeper"\
                }\
            ]\
        }\
    ] 64

execute in kitbattle run tp @s 0 85 0

# 清除职业标签，完成发放
tag @s remove archer
