# ========================================
# 房屋预览 - 建造前预览房屋信息
# ========================================

tellraw @s [\
    {\
        "text":"┌────────────────────────────┐",\
        "color":"dark_aqua"\
    },\
    {"text":"\n"},\
    {\
        "text":"   🏠 温馨小木屋 🏠",\
        "color":"gold",\
        "bold":true\
    },\
    {"text":"\n"},\
    {"text":"\n"},\
    {\
        "text":"  规格：default_house 模板",\
        "color":"white"\
    },\
    {"text":"\n"},\
    {\
        "text":"  附属：牛圈、猪圈、存储间",\
        "color":"white"\
    },\
    {"text":"\n"},\
    {\
        "text":"  价格：",\
        "color":"white"\
    },\
    {\
        "text":"10 金币",\
        "color":"gold",\
        "bold":true\
    },\
    {\
        "text":"    余额：",\
        "color":"white"\
    },\
    {\
        "score":{\
            "name":"@s",\
            "objective":"mining_adventure_money"\
        },\
        "color":"gold"\
    },\
    {"text":"\n"},\
    {"text":"\n"},\
    {\
        "text":"         [确认购买]",\
        "color":"green",\
        "bold":true,\
        "click_event":{\
            "action":"run_command",\
            "command":"/trigger house_buy set 1"\
        },\
        "hover_event":{\
            "action":"show_text",\
            "value":"花费 10 金币建造小屋\n含牛圈、猪圈、存储间"\
        }\
    },\
    {"text":"\n"},\
    {"text":"\n"},\
    {\
        "text":"└────────────────────────────┘",\
        "color":"dark_aqua"\
    }\
]