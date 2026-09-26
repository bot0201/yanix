# 瞄准镜子菜单
tellraw @s [\
    "",\
    {"text":"\n----- 选择瞄准镜 -----\n","color":"gold"},\
    {"text":"[卸下]","color":"red","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 110"}},\
    {"text":"  "},\
    {"text":"[红点]","color":"green","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 111"}},\
    {"text":"  "},\
    {"text":"[全息]","color":"green","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 112"}},\
    {"text":"\n"},\
    {"text":"[四倍]","color":"yellow","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 113"}},\
    {"text":"  "},\
    {"text":"[八倍]","color":"yellow","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 114"}},\
    {"text":"\n"},\
    {"text":"[返回]","color":"gray","clickEvent":{"action":"run_command","command":"/function pve:gun/attach/menu"}}\
]