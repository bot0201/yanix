# M2 后座力计算 + 应用（基础 8 步 × -0.05°）
scoreboard players set #recoil tmp 8
execute if score @s attach_scope matches 1 run scoreboard players remove #recoil tmp 2
execute if score @s attach_scope matches 2 run scoreboard players remove #recoil tmp 4
execute if score @s attach_scope matches 3 run scoreboard players add #recoil tmp 2
execute if score @s attach_muzzle matches 2 run scoreboard players remove #recoil tmp 5
execute if score @s attach_grip matches 1 run scoreboard players remove #recoil tmp 4
execute if score @s attach_grip matches 2 run scoreboard players remove #recoil tmp 2
execute if score #recoil tmp matches 1.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 2.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 3.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 4.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 5.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 6.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 7.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 8.. run rotate @s ~ ~-0.05