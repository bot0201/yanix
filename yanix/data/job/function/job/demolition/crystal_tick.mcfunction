
# === 水晶箭计时器：每分钟给1支 ===
scoreboard players add @a[tag=demolition_fighting] crystal_arrow_timer 1

give @a[\
    tag=demolition_fighting,\
    scores={\
        crystal_arrow_timer=1200..\
    }\
] minecraft:arrow[\
    custom_data={\
        crystal_arrow:1\
    },\
    item_name='{"text":"水晶箭","color":"aqua"}'\
] 1

scoreboard players reset @a[\
    tag=demolition_fighting,\
    scores={\
        crystal_arrow_timer=1200..\
    }\
] crystal_arrow_timer

# === 检测爆破手用弩发射水晶箭 ===
execute \
    as @a[\
        tag=demolition_fighting,\
        scores={\
            used_crossbow=1..\
        }\
    ] \
    at @s \
    if items entity @s weapon *[\
        custom_data~{\
            cannon:1\
        }\
    ] \
    run tag @e[\
        type=arrow,\
        distance=..5,\
        limit=1,\
        sort=nearest\
    ] add crystal_arrow

scoreboard players reset @a[\
    tag=demolition_fighting,\
    scores={\
        used_crossbow=1..\
    }\
] used_crossbow

# === 水晶箭落地 → 引爆 ===
execute \
    as @e[\
        type=arrow,\
        tag=crystal_arrow,\
        nbt={\
            inGround:true\
        }\
    ] \
    at @s \
    run function job:demolition/crystal_explode_child