# 启用所有 trigger
scoreboard players enable @a test_msg
scoreboard players enable @a test_money
scoreboard players enable @a test_get_snowball

# 合并为单次 @a 扫描
execute \
    as @a \
    run function main:snowball_menu/trigger_handler_child