# ---- 冷却检查 ----
$execute unless score @s $(cooldown_score) matches 0 run return 0

# ---- 弹匣检查 ----
$execute \
    unless score @s $(mag_score) matches 1.. \
    run tellraw @s {"text":"你需要按F装填子弹！","color":"red"}
$execute \
    unless score @s $(mag_score) matches 1.. \
    run return 0

# ---- 冷却设置 ----
$scoreboard players set @s $(cooldown_score) $(cooldown_value)

# ---- 后座力（无后座标签跳过） ----
$execute unless entity @s[tag=no_recoil] run function $(recoil_func)

# ---- 消音器伤害标记 ----
scoreboard players set #supp_active db 0
execute if score @s attach_muzzle matches 1 run scoreboard players set #supp_active db 1

# 伤害归属标签
$tag @s add $(shooting_tag)

# 扣子弹
$scoreboard players remove @s $(mag_score) 1

# 重置递归计数
scoreboard players set @s recursion_running_count 0

# ---- 播放射击音效 ----
$execute \
    if score @s attach_muzzle matches 1 \
    run playsound $(sound_supp) player @s ~ ~ ~ $(sound_supp_vol) $(sound_supp_pitch)
$execute \
    unless score @s attach_muzzle matches 1 \
    run playsound $(sound_unsupp) player @s ~ ~ ~ $(sound_unsupp_vol) $(sound_unsupp_pitch)

# 射线（委托给枪械专属函数）
$execute \
    rotated as @s \
    anchored eyes \
    run function $(ray_func)

# 移除伤害归属标签
$tag @s remove $(shooting_tag)

# 重置配件标记
scoreboard players set #supp_active db 0

# 重置成就触发器
$advancement revoke @s only $(advancement)