# 刺客的隐身技能
function job:assassin/skill_invis

# 经典战士的无畏技能
function job:classic_soldier/classic_soldier_skill_fearless

# 刺客的秒杀技能
function job:assassin/skill_one_shot

# 爆破手的水晶箭
function job:demolition/crystal_tick

# 弓箭手的tp箭
function job:archer/tp_bow

# 启用职业trigger
function job:main/enable_trigger

# 处理职业trigger
function job:main/trigger_handler

# 处理职业cd
function job:main/cd_handler

# 处理职业cd渲染
scoreboard players operation @a[\
        tag=skill_fearless_cd\
    ] skill_fearless_cd_seconds = @a[\
        tag=skill_fearless_cd\
    ] skill_fearless_cd
scoreboard players operation @a[\
        tag=skill_fearless_cd\
    ] skill_fearless_cd_seconds /= #20 const

execute \
    as @a[tag=skill_fearless_cd] \
    run title @s actionbar [\
        {\
            "text":"技能冷却中：",\
            "color":"red"\
        },\
        {\
            "score":{"name":"@s","objective":"skill_fearless_cd_seconds"},\
            "color":"gold"\
        },\
        {\
            "text":" 秒",\
            "color":"red"\
        }\
    ]

execute \
    as @e[\
        type=minecraft:marker,\
        tag=kitbattle_centre\
    ] \
    at @s run execute \
        as @p[\
            sort=furthest,\
            distance=95..\
        ] \
        at @s if dimension minecraft:kitbattle \
        run function job:main/out_of_world_child