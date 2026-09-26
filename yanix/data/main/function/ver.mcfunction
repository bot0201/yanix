tellraw @s {\
    "text":"============================================================",\
    "color":"gray",\
}

$tellraw @s {\
    "text":"Yanix 数据包版本: ",\
    "color":"gold",\
    "bold":true,\
    "extra":[\
        {\
            "text":"$(ver)",\
            "color":"yellow",\
            "click_event":{\
                "action":"open_url",\
                "url":"https://github.com/bot0201/yanix_datapack/releases/tag/v$(ver)"\
            },\
        }\
    ]\
}

tellraw @s {\
    "text":"============================================================",\
    "color":"gray",\
}