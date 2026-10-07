# 检查弹匣
execute \
    unless score @s magazine_m4a1 matches 1.. \
    run tellraw @s {"text":"你需要按F装填子弹！","color":"red"}
execute \
    unless score @s magazine_m4a1 matches 1.. \
    run return 0

# ---- 后座力计算（基础 4 步 × -0.1 = -0.4） ----
scoreboard players set #recoil tmp 4
# 红点: 减少 1 步
execute if score @s attach_scope matches 1 run scoreboard players remove #recoil tmp 1
# 全息: 减少 2 步
execute if score @s attach_scope matches 2 run scoreboard players remove #recoil tmp 2
# 四倍: 增加 1 步
execute if score @s attach_scope matches 3 run scoreboard players add #recoil tmp 1
# 补偿器: 减少 3 步
execute if score @s attach_muzzle matches 2 run scoreboard players remove #recoil tmp 3
# 垂直握把: 减少 2 步
execute if score @s attach_grip matches 1 run scoreboard players remove #recoil tmp 2
# 三角握把: 减少 1 步
execute if score @s attach_grip matches 2 run scoreboard players remove #recoil tmp 1

# 应用后座力（每步 -0.1°）
execute if score #recoil tmp matches 1.. run rotate @s ~ ~-0.1
execute if score #recoil tmp matches 2.. run rotate @s ~ ~-0.1
execute if score #recoil tmp matches 3.. run rotate @s ~ ~-0.1
execute if score #recoil tmp matches 4.. run rotate @s ~ ~-0.1
execute if score #recoil tmp matches 5.. run rotate @s ~ ~-0.1

# ---- 消音器伤害标记 ----
scoreboard players set #supp_active tmp 0
execute if score @s attach_muzzle matches 1 run scoreboard players set #supp_active tmp 1

# 伤害归属标签
tag @s add shooting_m4a1

# 扣子弹
scoreboard players remove @s magazine_m4a1 1

# 重置递归计数
scoreboard players set @s recursion_running_count 0

# ---- 播放射击音效 ----
execute if score @s attach_muzzle matches 1 run playsound pve:m4a1_shoot player @s ~ ~ ~ 0.05 1.5
execute unless score @s attach_muzzle matches 1 run playsound pve:m4a1_shoot_silence player @s ~ ~ ~ 1 1

# 开始递归绘画子弹轨迹/伤害计算
execute \
    rotated as @s \
    anchored eyes \
    run function pve:gun/shoot_recursion_child

# 移除伤害归属标签
tag @s remove shooting_m4a1

# 重置配件标记
scoreboard players set #supp_active tmp 0

# 重置成就触发器（允许下一次射击）
advancement revoke @s only pve:m4a1_shoot