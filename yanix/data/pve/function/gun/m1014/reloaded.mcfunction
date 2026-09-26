scoreboard players set @s time 0
tag @s remove reloading_m1014
scoreboard players operation @s magazine_old_m1014 = @s magazine_m1014
# 扩容弹匣: 消耗 10 备弹，否则 8
scoreboard players remove @s bullet_m1014 8
execute if score @s attach_mag matches 1 run scoreboard players remove @s bullet_m1014 2
scoreboard players operation @s magazine_m1014 += @s magazine_old_m1014
scoreboard players set @s magazine_m1014 8
execute if score @s attach_mag matches 1 run scoreboard players set @s magazine_m1014 10
scoreboard players set @s magazine_old_m1014 0