# 处理「模式列表」按钮：显示列表并重置 trigger
# 由 trigger_handler_child 调用，以 @s = 点击玩家 身份执行
function main:affiliated/mode/show_menu
scoreboard players set @s show_modes 0