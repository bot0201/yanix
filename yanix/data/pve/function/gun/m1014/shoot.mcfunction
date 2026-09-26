# 检查弹匣
execute \
    unless score @s magazine_m1014 matches 1.. \
    run tellraw @s {"text":"你需要按F装填子弹！","color":"red"}
execute \
    unless score @s magazine_m1014 matches 1.. \
    run return 0

# ---- 消音器伤害标记 ----
scoreboard players set #supp_active tmp 0
execute if score @s attach_muzzle matches 1 run scoreboard players set #supp_active tmp 1

# 伤害归属标签
tag @s add shooting_m1014

# 扣子弹
scoreboard players remove @s magazine_m1014 1

# ---- 播放射击音效（消音器使用更轻的音效） ----
execute if score @s attach_muzzle matches 1 run playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ 0.05 1.5
execute unless score @s attach_muzzle matches 1 run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 0.5 0.8

# 同时射出 8 颗弹丸
scoreboard players set #m1014 pellet_m1014 8
function pve:gun/m1014/shoot_spread_child

# 移除伤害归属标签
tag @s remove shooting_m1014

# 重置配件标记
scoreboard players set #supp_active tmp 0

# 重置成就触发器（允许下一次射击）
advancement revoke @s only pve:m1014_shoot