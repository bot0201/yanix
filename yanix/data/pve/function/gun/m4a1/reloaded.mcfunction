scoreboard players set @s time 0
tag @s remove reloading_m4a1
scoreboard players operation @s magazine_old_m4a1 = @s magazine_m4a1
# 扩容弹匣: 消耗 40 备弹，否则 30
scoreboard players remove @s bullet_m4a1 30
execute if score @s attach_mag matches 1 run scoreboard players remove @s bullet_m4a1 10
scoreboard players operation @s magazine_m4a1 += @s magazine_old_m4a1
scoreboard players set @s magazine_m4a1 30
execute if score @s attach_mag matches 1 run scoreboard players set @s magazine_m4a1 40
scoreboard players set @s magazine_old_m4a1 0