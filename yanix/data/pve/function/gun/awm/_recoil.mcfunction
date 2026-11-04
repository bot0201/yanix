# AWM 后座力计算 + 应用（基础 2 步 × -0.1°）
scoreboard players set #recoil tmp 2
execute if score @s attach_muzzle matches 2 run scoreboard players remove #recoil tmp 1
execute if score @s attach_grip matches 1 run scoreboard players remove #recoil tmp 2
execute if score @s attach_grip matches 2 run scoreboard players remove #recoil tmp 1
execute if score #recoil tmp matches 1.. run rotate @s ~ ~-0.1
execute if score #recoil tmp matches 2.. run rotate @s ~ ~-0.1