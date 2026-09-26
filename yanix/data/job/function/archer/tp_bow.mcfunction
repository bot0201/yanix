execute \
    as @a[scores={used_bow=1..}] \
    at @s \
    if items entity @s weapon.* bow[\
        custom_data~{\
            bow:tp\
        }\
    ] \
    anchored eyes \
    run function job:archer/tp_bow_marker_child
scoreboard players reset @a[\
        scores={\
            used_bow=1..\
        }\
    ] \
    used_bow

execute as @e[\
        limit=1,\
        type=arrow,\
        tag=tp_arrow,\
        nbt={\
            inGround:true\
        }\
    ] \
    at @s \
    run tp @a[\
        tag=used\
    ] ~ ~-2 ~
kill @e[\
    limit=1,\
    type=arrow,\
    tag=tp_arrow,\
    nbt={\
        inGround:true\
    }\
]

execute \
    as @e[\
        tag=tp\
    ] \
    at @s \
    unless entity @e[\
        type=arrow,\
        distance=..1.5,\
        tag=tp_arrow\
    ] \
    run function job:archer/tp_bow_tp_child
execute \
    as @e[\
        type=marker,tag=tp\
    ] \
    at @s \
    unless entity @e[\
        type=arrow,\
        distance=..1.5,\
        tag=tp_arrow\
    ] \
    run kill @s