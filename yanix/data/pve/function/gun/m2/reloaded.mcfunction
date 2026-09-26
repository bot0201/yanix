scoreboard players set @s time 0
tag @s remove reloading_m2
scoreboard players operation @s magazine_old_m2 = @s magazine_m2
# 扩容弹匣: 消耗 120 备弹，否则 100
scoreboard players remove @s bullet_m2 100
execute if score @s attach_mag matches 1 run scoreboard players remove @s bullet_m2 20
scoreboard players operation @s magazine_m2 += @s magazine_old_m2
scoreboard players set @s magazine_m2 100
execute if score @s attach_mag matches 1 run scoreboard players set @s magazine_m2 120
scoreboard players set @s magazine_old_m2 0