# M2 后座力计算 + 应用（基础 8 步 × -0.05°）
scoreboard players set #recoil db 8
execute if score @s attach_scope matches 1 run scoreboard players remove #recoil db 2
execute if score @s attach_scope matches 2 run scoreboard players remove #recoil db 4
execute if score @s attach_scope matches 3 run scoreboard players add #recoil db 2
execute if score @s attach_muzzle matches 2 run scoreboard players remove #recoil db 5
execute if score @s attach_grip matches 1 run scoreboard players remove #recoil db 4
execute if score @s attach_grip matches 2 run scoreboard players remove #recoil db 2
execute if score #recoil db matches 1.. run rotate @s ~ ~-0.05
execute if score #recoil db matches 2.. run rotate @s ~ ~-0.05
execute if score #recoil db matches 3.. run rotate @s ~ ~-0.05
execute if score #recoil db matches 4.. run rotate @s ~ ~-0.05
execute if score #recoil db matches 5.. run rotate @s ~ ~-0.05
execute if score #recoil db matches 6.. run rotate @s ~ ~-0.05
execute if score #recoil db matches 7.. run rotate @s ~ ~-0.05
execute if score #recoil db matches 8.. run rotate @s ~ ~-0.05