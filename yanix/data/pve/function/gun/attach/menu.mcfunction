# 配件系统菜单 — 主页面
# @s = 执行玩家

tellraw @s [\
    "",\
    {"text":"\n============= 配件系统 =============\n","color":"gold","bold":true},\
    {"text":"[1] ","color":"white"},\
    {"text":"瞄准镜","color":"aqua","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 101"}},\
    {"text":"  "},\
    {"text":"[2] ","color":"white"},\
    {"text":"枪口","color":"aqua","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 201"}},\
    {"text":"  "},\
    {"text":"[3] ","color":"white"},\
    {"text":"握把","color":"aqua","click_event":{"action":"run_command","command":"/trigger pve_attach set 301"}},\
    {"text":"  "},\
    {"text":"[4] ","color":"white"},\
    {"text":"弹匣","color":"aqua","click_event":{"action":"run_command","command":"/trigger pve_attach set 401"}},\
    {"text":"\n\n"},\
    {"text":"[查看当前配件] ","color":"green","click_event":{"action":"run_command","command":"/trigger pve_attach set 800"}},\
    {"text":"  "},\
    {"text":"[卸下全部配件] ","color":"red","clickEvent":{"action":"run_command","command":"/trigger pve_attach set 900"}},\
    {"text":"\n===================================","color":"gold"}\
]