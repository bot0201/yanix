tellraw @a {\
    "text":"扫地机已清理完成，本次清理了",\
    "color":"green"\
}
function lib:tools/get_item_count
kill @e[type=item]
tellraw @a {\
    "score":{\
        "name":"item_count",\
        "objective":"db"\
    }\
}
tellraw @a {\
    "text":"个物品",\
    "color":"green"\
}
# 重置时间，不然只会执行一次
scoreboard players set #item_cleaner time 0