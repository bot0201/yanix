# CD: 无畏
execute \
    as @a[tag=skill_fearless_cd] \
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
    as @a[\
        tag=skill_fearless_cd,\
        scores={\
            skill_fearless_cd=1200\
        }\
    ] \
    run give @s minecraft:netherite_chestplate[\
        custom_data={\
            kit:1,\
            skill:1,\
            skill_fearless:1\
        }\
    ] 1

execute \
    as @a[\
        tag=skill_fearless_cd,\
        scores={\
            skill_fearless_cd=1200\
        }\
    ] \
    run scoreboard players set @s skill_fearless_cd 0
