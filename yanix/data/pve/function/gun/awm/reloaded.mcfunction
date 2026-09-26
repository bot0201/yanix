scoreboard players set @s time 0
tag @s remove reloading_awm
scoreboard players operation @s magazine_old_awm = @s magazine_awm
# 扩容弹匣: 消耗 7 备弹，否则 5
scoreboard players remove @s bullet_awm 5
execute if score @s attach_mag matches 1 run scoreboard players remove @s bullet_awm 2
scoreboard players operation @s magazine_awm += @s magazine_old_awm
scoreboard players set @s magazine_awm 5
execute if score @s attach_mag matches 1 run scoreboard players set @s magazine_awm 7
scoreboard players set @s magazine_old_awm 0