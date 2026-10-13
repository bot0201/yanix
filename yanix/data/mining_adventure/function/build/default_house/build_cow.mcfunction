# 放干草块
fill 9 -60 11 9 -60 10 hay_block[axis=z]
setblock 9 -59 10 hay_block[axis=z]
setblock 8 -60 10 hay_block[axis=z]

# 放水槽
setblock 7 -60 10 spruce_trapdoor[facing=east,open=true,half=bottom,powered=false,waterlogged=false]
fill 5 -60 10 6 -60 10 water
fill 5 -60 11 6 -60 11 spruce_trapdoor[facing=south,open=true,half=bottom,powered=false,waterlogged=false]

# 放牛
summon cow 8 -60 10
summon cow 8 -60 11
summon cow 9 -60 10
summon cow 9 -60 11

# 删除按钮
setblock 8 -60 12 air

# 删除文字显示
execute positioned 8 -58.5 12 run kill @n[type=text_display,limit=1,sort=nearest]

# 删成就以防穿帮, 虽然可能导致重复触发(但是按钮已经删了)
advancement revoke @s only mining_adventure:build_cow

execute \
    if entity @s[tag=no_build] \
    run advancement grant @s only mining_adventure:first_build