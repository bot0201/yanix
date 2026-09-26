# 检查射速冷却
execute \
    unless score @s m2_cooldown matches 0 \
    run return 0

# 检查弹匣
execute \
    unless score @s magazine_m2 matches 1.. \
    run tellraw @s {"text":"你需要按F装填子弹！","color":"red"}
execute \
    unless score @s magazine_m2 matches 1.. \
    run return 0

# 射速冷却（3 × 2 tick = 0.3 秒）
scoreboard players set @s m2_cooldown 3

# ---- 后座力计算（基础 8 步 × -0.05 = -0.4） ----
scoreboard players set #recoil tmp 8
# 红点: 减少 2 步
execute if score @s attach_scope matches 1 run scoreboard players remove #recoil tmp 2
# 全息: 减少 4 步
execute if score @s attach_scope matches 2 run scoreboard players remove #recoil tmp 4
# 四倍: 增加 2 步（不使用但保留）
execute if score @s attach_scope matches 3 run scoreboard players add #recoil tmp 2
# 补偿器: 减少 5 步
execute if score @s attach_muzzle matches 2 run scoreboard players remove #recoil tmp 5
# 垂直握把: 减少 4 步
execute if score @s attach_grip matches 1 run scoreboard players remove #recoil tmp 4
# 三角握把: 减少 2 步
execute if score @s attach_grip matches 2 run scoreboard players remove #recoil tmp 2

# 应用后座力（每步 -0.05°）
execute if score #recoil tmp matches 1.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 2.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 3.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 4.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 5.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 6.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 7.. run rotate @s ~ ~-0.05
execute if score #recoil tmp matches 8.. run rotate @s ~ ~-0.05

# ---- 消音器伤害标记 ----
scoreboard players set #supp_active tmp 0
execute if score @s attach_muzzle matches 1 run scoreboard players set #supp_active tmp 1

# 伤害归属标签
tag @s add shooting_m2

# 扣子弹
scoreboard players remove @s magazine_m2 1

# 重置递归计数
scoreboard players set @s recursion_running_count 0

# ---- 播放机枪音效（消音器使用更轻的音效） ----
execute if score @s attach_muzzle matches 1 run playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ 0.04 1.6
execute unless score @s attach_muzzle matches 1 run playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ 0.5 0.6

# 射线（80 格射程）
execute \
    rotated as @s \
    anchored eyes \
    run function pve:gun/m2/shoot_recursion_child

# 移除伤害归属标签
tag @s remove shooting_m2

# 重置配件标记
scoreboard players set #supp_active tmp 0

# 重置成就触发器
advancement revoke @s only pve:m2_shoot