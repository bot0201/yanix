## 此文件用于展示debug信息给对应tag的人
# 需要传参(宏)：
# module:模块缩写
# module_full_name:模块全写
# content:需要展示的debug信息
# color:展示的debug信息的颜色
# ...你甚至能够sql注入攻击(？)来实现一行内多颜色或一function实现多行
# 以下为玩梗时间！(依旧百万英镑)
# 一function实现多行：这样会很屎山，先生。
# 你：是的，我知道

# 先处理单独的
$execute \
    as @a \
    if entity @s[tag=d_debug_$(module)] \
    run tellraw @s [\
        {\
            "text": "[",\
            "color": "green"\
        },\
        {\
            "text":$(module_full_name),\
            "color":"green"\
        },\
        {\
            "text": "]",\
            "color":"green"\
        },\
        {\
            "text":$(content),\
            "color":$(color)\
        }\
    ]

# 接下来单独处理接收全部信息的人
$execute \
    as @a \
    if entity @s[tag=a_debug] \
    run tellraw @s [\
        {\
            "text":"[",\
            "color":"green"\
        },\
        {\
            "text":$(module_full_name),\
            "color":"green"\
        },\
        {\
            "text":"]",\
            "color":"green"\
        },\
        {\
            "text":$(content),\
            "color":$(color)\
        }\
    ]
