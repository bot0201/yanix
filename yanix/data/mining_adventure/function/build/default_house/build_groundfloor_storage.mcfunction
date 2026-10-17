fill 11 -58 8 11 -60 8 barrel
fill 9 -58 8 9 -60 8 barrel
setblock 10 -60 8 barrel

# 删按钮
setblock 10 -59 8 ladder[hanging=false]

# 删除文字
execute \
    positioned 10 -58 8 \
    run kill @n[type=text_display]

# 删成就以防穿帮, 虽然可能导致重复触发(但是按钮已经删了)
advancement revoke @s only mining_adventure:build_groundfloor_storage
