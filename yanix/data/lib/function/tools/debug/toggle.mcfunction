# 切换单个 debug tag（宏）
# 参数：tag —— 要切换的 tag 名（与 trigger 计分板同名）
# 以 @s 身份执行：有该 tag 则移除，无则添加
$execute \
    if entity @s[tag=$(tag)] \
    run tag @s add lib_dbg_toggle_had
$execute \
    if entity @s[tag=$(tag)] \
    run tag @s remove $(tag)
$execute \
    unless entity @s[tag=lib_dbg_toggle_had] \
    run tag @s add $(tag)
tag @s remove lib_dbg_toggle_had
