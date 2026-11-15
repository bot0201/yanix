# 附属包管理器：启用附属包（由 toggle_child 调用，以 @s = 触发玩家 身份执行）
$scoreboard players set #$(id) pack_enabled 1
$tellraw @s [\
    {"text":"[附属包] 已启用 ","color":"green"},\
    {"text":"$(name)","color":"aqua"}\
]