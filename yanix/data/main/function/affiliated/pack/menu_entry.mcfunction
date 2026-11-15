# 附属包管理器：显示一个附属包及其启用状态，可点击切换
# 用法：function main:affiliated/pack/menu_entry {id:"foo", name:"示例包"}
# 在附属包合并进 #main:affiliated/pack/menu 标签的函数中调用
$execute \
    if score #$(id) pack_enabled matches 1 \
    run tellraw @s [\
        {\
            "text":"  [$(name)]",\
            "color":"aqua",\
            "bold":true,\
            "click_event":{\
                "action":"run_command",\
                "command":"/trigger trigger_pack_$(id) set 1"\
            }\
        },\
        {"text":" 已启用（点击禁用）","color":"green","italic":true}\
    ]
$execute \
    unless score #$(id) pack_enabled matches 1 \
    run tellraw @s [\
        {\
            "text":"  [$(name)]",\
            "color":"gray",\
            "bold":true,\
            "click_event":{\
                "action":"run_command",\
                "command":"/trigger trigger_pack_$(id) set 1"\
            }\
        },\
        {"text":" 已禁用（点击启用）","color":"red","italic":true}\
    ]