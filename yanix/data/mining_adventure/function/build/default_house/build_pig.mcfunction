summon pig 6 -60 6
summon pig 6 -60 7
summon pig 6 -60 5
summon pig 6 -60 4
summon pig 5 -60 6
summon pig 5 -60 7
summon pig 5 -60 5
summon pig 5 -60 4
summon pig 5 -60 6

# 删按钮
setblock 6 -60 8 air

# 删除文字
execute \
    positioned 6 -58 8 \
    run kill @n[type=text_display]

# 删成就以防穿帮, 虽然可能导致重复触发(但是按钮已经删了)
advancement revoke @s only mining_adventure:build_pig
