# 附属包管理器：禁用附属包（由 toggle_child 调用，以 @s = 触发玩家 身份执行）
$scoreboard players set #$(id) pack_enabled 0
$tellraw @s [{"text":"[附属包] 已禁用 ","color":"red"},{"text":"$(name)","color":"gray"}]