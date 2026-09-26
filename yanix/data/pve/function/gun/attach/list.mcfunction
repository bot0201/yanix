# 配件系统列表 — 不使用宏，用简单的 tellraw
tellraw @s [\
    "",\
    {"text":"\n===== 当前配件 =====\n","color":"gold","bold":true},\
    {"text":"瞄准镜: ","color":"gray"},\
    {"text":"[查看]","color":"aqua","clickEvent":{"action":"run_command","command":"/scoreboard players get @s attach_scope"}},\
    {"text":"  枪口: ","color":"gray"},\
    {"text":"[查看]","color":"aqua","clickEvent":{"action":"run_command","command":"/scoreboard players get @s attach_muzzle"}},\
    {"text":"\n握把: ","color":"gray"},\
    {"text":"[查看]","color":"aqua","clickEvent":{"action":"run_command","command":"/scoreboard players get @s attach_grip"}},\
    {"text":"  弹匣: ","color":"gray"},\
    {"text":"[查看]","color":"aqua","clickEvent":{"action":"run_command","command":"/scoreboard players get @s attach_mag"}},\
    {"text":"\n\n配件值说明: 0=无 1/2/3/4=不同等级","color":"dark_gray"},\
    {"text":"\n=====================","color":"gold"}\
]