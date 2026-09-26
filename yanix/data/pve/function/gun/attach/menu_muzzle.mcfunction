# 枪口子菜单
tellraw @s [\
    "",\
    {"text":"\n----- 选择枪口 -----\n","color":"gold"},\
    {"text":"[卸下]","color":"red","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 220"}},\
    {"text":"  "},\
    {"text":"[消音器]","color":"green","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 221"}},\
    {"text":"  "},\
    {"text":"[补偿器]","color":"green","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 222"}},\
    {"text":"\n\n"},\
    {"text":"[返回]","color":"gray","clickEvent":{"action":"run_command","command":"/function pve:gun/attach/menu"}}\
]