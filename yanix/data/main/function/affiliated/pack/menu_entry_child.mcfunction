# 附属包管理器：渲染一条菜单项
# 由 menu_entry 调用，以 @s = 查看玩家 身份执行
$tellraw @s [\
    {\
        "text":"  [$(name)]",\
        "color":"$(color)",\
        "bold":true,\
        "click_event":{\
            "action":"run_command",\
            "command":"/trigger trigger_pack_$(id) set 1"\
        }\
    },\
    {"text":" $(status)","color":"$(status_color)","italic":true}\
]