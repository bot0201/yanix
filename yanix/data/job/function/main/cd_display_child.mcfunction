scoreboard players operation @s skill_fearless_cd_seconds = @s skill_fearless_cd
scoreboard players operation @s skill_fearless_cd_seconds /= #20 const
title @s actionbar [\
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