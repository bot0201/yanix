# 模式附属 API：显示一个已注册模式的可点击入口
# 用法：function main:affiliated/mode/menu_entry {objective:"foo_join", name:"空岛"}
# 在附属包合并进 #main:affiliated/mode/menu 标签的函数中调用
$tellraw @s [\
    {\
        "text":"  [$(name)]",\
        "color":"aqua",\
        "bold":true,\
        "click_event":{\
            "action":"run_command",\
            "command":"/trigger $(objective) set 1"\
        }\
    },\
    {"text":" 点击进入","color":"gray","italic":true}\
]