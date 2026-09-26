# 检查栓动冷却
execute \
    unless score @s awm_cooldown matches 0 \
    run return 0

# 检查弹匣
execute \
    unless score @s magazine_awm matches 1.. \
    run tellraw @s {"text":"你需要按F装填子弹！","color":"red"}
execute \
    unless score @s magazine_awm matches 1.. \
    run return 0

# 栓动冷却（10 × 2 tick = 1秒）
scoreboard players set @s awm_cooldown 10

# ---- 后座力计算（基础 2 步 × -0.1 = -0.2） ----
scoreboard players set #recoil tmp 2
# 补偿器: 减少 1 步
execute if score @s attach_muzzle matches 2 run scoreboard players remove #recoil tmp 1
# 垂直握把: 减少 2 步
execute if score @s attach_grip matches 1 run scoreboard players remove #recoil tmp 2
# 三角握把: 减少 1 步
execute if score @s attach_grip matches 2 run scoreboard players remove #recoil tmp 1

# 应用后座力
execute if score #recoil tmp matches 1.. run rotate @s ~ ~-0.1
execute if score #recoil tmp matches 2.. run rotate @s ~ ~-0.1

# ---- 消音器伤害标记 ----
scoreboard players set #supp_active tmp 0
execute if score @s attach_muzzle matches 1 run scoreboard players set #supp_active tmp 1

# 伤害归属标签
tag @s add shooting_awm

# 扣子弹
scoreboard players remove @s magazine_awm 1

# 重置递归计数
scoreboard players set @s recursion_running_count 0

# ---- 播放狙击音效（消音器使用更轻的音效） ----
execute if score @s attach_muzzle matches 1 run playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ 0.03 1.8
execute unless score @s attach_muzzle matches 1 run playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ 0.3 0.8

# 射线（100 格射程）
execute \
    rotated as @s \
    anchored eyes \
    run function pve:gun/awm/shoot_recursion_child

# 移除伤害归属标签
tag @s remove shooting_awm

# 重置配件标记
scoreboard players set #supp_active tmp 0

# 重置成就触发器
advancement revoke @s only pve:awm_shoot