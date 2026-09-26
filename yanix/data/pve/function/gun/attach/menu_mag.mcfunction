# 弹匣子菜单
tellraw @s [\
    "",\
    {"text":"\n----- 选择弹匣 -----\n","color":"gold"},\
    {"text":"[卸下]","color":"red","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 440"}},\
    {"text":"  "},\
    {"text":"[扩容弹匣]","color":"green","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 441"}},\
    {"text":"  "},\
    {"text":"[快速弹匣]","color":"green","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 442"}},\
    {"text":"\n\n"},\
    {"text":"[返回]","color":"gray","clickEvent":{"action":"run_command","command":"/function pve:gun/attach/menu"}}\
]