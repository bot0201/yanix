# 决定是哪一个提示
execute \
    if score #toggle_item_cleaner db matches ..0 \
    run function lib:fast_func/toggle_item_cleaner/toggle_display
execute \
    if score #toggle_item_cleaner db matches 1.. \
    run function lib:fast_func/toggle_item_cleaner/untoggle_display

# 主操作
scoreboard players add #toggle_item_cleaner db 1

# 拉回
execute \
    if score #toggle_item_cleaner db matches ..-1 \
    run scoreboard players set #toggle_item_cleaner db 0
execute \
    if score #toggle_item_cleaner db matches 1.. \
    run scoreboard players set #toggle_item_cleaner db 0