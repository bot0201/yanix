# 启用 qm trigger
scoreboard players enable @a qm_menu

# 合并为单次 @a 扫描
execute \
    as @a \
    run function qm:trigger_handler_child