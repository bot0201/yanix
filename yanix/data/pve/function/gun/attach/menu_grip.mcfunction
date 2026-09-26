# 握把子菜单
tellraw @s [\
    "",\
    {"text":"\n----- 选择握把 -----\n","color":"gold"},\
    {"text":"[卸下]","color":"red","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 330"}},\
    {"text":"  "},\
    {"text":"[垂直握把]","color":"green","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 331"}},\
    {"text":"  "},\
    {"text":"[三角握把]","color":"green","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 332"}},\
    {"text":"\n\n"},\
    {"text":"[返回]","color":"gray","clickEvent":{"action":"run_command","command":"/function pve:gun/attach/menu"}}\
]