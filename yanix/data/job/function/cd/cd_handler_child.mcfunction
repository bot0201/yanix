execute \
    unless items entity @s container.* \
        netherite_chestplate[\
            custom_data={\
                kit:1,\
                skill:1,\
                skill_fearless:1\
            }\
        ] \
    run scoreboard players add @s skill_fearless_cd 1

execute \
    if score @s skill_fearless_cd matches 1200 \
    run give @s minecraft:netherite_chestplate[\
        custom_data={\
            kit:1,\
            skill:1,\
            skill_fearless:1\
        }\
    ] 1

execute \
    if score @s skill_fearless_cd matches 1200 \
    run scoreboard players set @s skill_fearless_cd 0