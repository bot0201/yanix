execute \
    as @a \
    if score @s soft_banned matches 1.. \
    run scoreboard players remove @s soft_banned 1

scoreboard players operation @a soft_banned_s = @s soft_banned
scoreboard players operation @a soft_banned_s /= #20 const
