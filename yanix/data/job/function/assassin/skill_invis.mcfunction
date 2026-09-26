# 刺客的手持物品隐身
execute \
    as @a[\
        tag=assassin_fighting\
    ] \
    if items entity @s weapon.mainhand \
        minecraft:shears[\
            custom_data={\
                assassin:1\
            }\
        ] \
    run function job:assassin/skill_invis_on_tag_child

execute \
    as @a[\
        tag=assassin_fighting,\
        tag=invisible\
    ] \
    run function job:assassin/skill_invis_on_clothes_child

execute \
    as @a[\
        tag=assassin_fighting,\
        tag=invisible\
    ] \
    unless items entity @s weapon.mainhand \
        minecraft:shears[\
            custom_data={\
                assassin:1\
            }\
        ] \
    run function job:assassin/skill_invis_off_tag_child

execute \
    as @a[\
        tag=assassin_fighting,\
        tag=no_invisible\
    ] \
    if items entity @s armor.head air \
    run function job:assassin/put_on_clothes

effect give @a[tag=invisible] minecraft:invisibility 1 1 false