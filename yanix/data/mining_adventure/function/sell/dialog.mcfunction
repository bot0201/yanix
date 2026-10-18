# ========================================
# 卖矿商店 - 对话式出售
# 通过 tellraw 点击出售矿石换取金币
# ========================================

tellraw @s [\
    {\
        "text":"┌────────────────────────────┐",\
        "color":"dark_aqua"\
    },\
    {"text":"\n"},\
    {\
        "text":"   ⛏ 矿石回收站 ⛏",\
        "color":"gold",\
        "bold":true\
    },\
    {"text":"\n"},\
    {"text":"\n"},\
    {"text":"  "},\
    {\
        "text":"[煤炭]",\
        "color":"dark_gray",\
        "bold":true,\
        "click_event":{\
            "action":"run_command",\
            "command":"/trigger sell_coal set 1"\
        },\
        "hover_event":{\
            "action":"show_text",\
            "value":"出售所有煤炭\n4 煤炭 = 1 金币"\
        }\
    },\
    {"text":"  "},\
    {\
        "text":"4煤→1金币",\
        "color":"gray",\
        "italic":true\
    },\
    {"text":"\n"},\
    {"text":"\n"},\
    {\
        "text":"  "},\
        {\
            "text":"[粗铁]",\
            "color":"white",\
            "bold":true,\
            "click_event":{\
                "action":"run_command",\
                "command":"/trigger sell_iron set 1"\
            },\
            "hover_event":{\
                "action":"show_text",\
                "value":"出售所有粗铁\n2 粗铁 = 1 金币"\
            }\
        },\
        {"text":"  "},\
        {\
            "text":"2铁→1金币",\
            "color":"gray",\
            "italic":true\
        },\
        {"text":"\n"},\
        {"text":"\n"},\
        {\
            "text":"  "},\
            {\
                "text":"[粗金]",\
                "color":"gold",\
                "bold":true,\
                "click_event":{\
                    "action":"run_command",\
                    "command":"/trigger sell_gold set 1"\
                },\
                "hover_event":{\
                    "action":"show_text",\
                    "value":"出售所有粗金\n1 粗金 = 1 金币"\
                }\
            },\
            {"text":"  "},\
            {\
                "text":"1金→1金币",\
                "color":"gray",\
                "italic":true\
            },\
            {"text":"\n"},\
            {"text":"\n"},\
            {\
                "text":"  "},\
                {\
                    "text":"[钻石]",\
                    "color":"aqua",\
                    "bold":true,\
                    "click_event":{\
                        "action":"run_command",\
                        "command":"/trigger sell_diamond set 1"\
                    },\
                    "hover_event":{\
                        "action":"show_text",\
                        "value":"出售所有钻石\n1 钻石 = 3 金币"\
                    }\
                },\
                {"text":"  "},\
                {\
                    "text":"1钻→3金币",\
                    "color":"gray",\
                    "italic":true\
                },\
                {"text":"\n"},\
                {"text":"\n"},\
                {\
                    "text":"└────────────────────────────┘",\
                    "color":"dark_aqua"\
                }\
            ]