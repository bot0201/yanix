# PVE 游戏开始
# 重置所有玩家状态、分发武器、开启第一波

# ---- 重置所有玩家分数 ----
scoreboard players set #pve horde 0

execute as @a run tag @s remove gaming_pve
execute as @a run tag @s remove reloading_m4a1
execute as @a run tag @s remove reloading_m1014
execute as @a run tag @s remove reloading_awm
execute as @a run tag @s remove reloading_m2
execute as @a run tag @s remove shooting_m4a1
execute as @a run tag @s remove shooting_m1014
execute as @a run tag @s remove shooting_awm
execute as @a run tag @s remove shooting_m2
execute as @a run tag @s remove attach_consumed

execute as @a run scoreboard players reset @s bullet_m4a1
execute as @a run scoreboard players reset @s magazine_m4a1
execute as @a run scoreboard players reset @s magazine_old_m4a1
execute as @a run scoreboard players reset @s bullet_m1014
execute as @a run scoreboard players reset @s magazine_m1014
execute as @a run scoreboard players reset @s magazine_old_m1014
execute as @a run scoreboard players reset @s bullet_awm
execute as @a run scoreboard players reset @s magazine_awm
execute as @a run scoreboard players reset @s magazine_old_awm
execute as @a run scoreboard players reset @s awm_cooldown
execute as @a run scoreboard players reset @s bullet_m2
execute as @a run scoreboard players reset @s magazine_m2
execute as @a run scoreboard players reset @s magazine_old_m2
execute as @a run scoreboard players reset @s m2_cooldown
execute as @a run scoreboard players reset @s time
execute as @a run scoreboard players reset @s attach_scope
execute as @a run scoreboard players reset @s attach_muzzle
execute as @a run scoreboard players reset @s attach_grip
execute as @a run scoreboard players reset @s attach_mag
execute as @a run scoreboard players reset @s recursion_running_count
execute as @a run scoreboard players reset @s pve_attach

# ---- 清除饰品标签（不删除 have_* 和 *_on，补枪开局不应损失饰品） ----

# ---- 添加 PVE 游戏标签 ----
tag @a add gaming_pve

# ---- 清除背包并分发武器 ----
clear @a

# M4A1
give @a ender_eye[custom_data={gun:"m4a1"},item_name='"M4A1 突击步枪"']

# M1014
give @a ender_eye[custom_data={gun:"m1014"},item_name='"M1014 霰弹枪"']

# AWM
give @a ender_eye[custom_data={gun:"awm"},item_name='"AWM 狙击步枪"']

# M2
give @a ender_eye[custom_data={gun:"m2"},item_name='"M2 勃朗宁重机枪"']

# ---- 初始化弹匣与备弹 ----
execute \
    as @a \
    run scoreboard players set @s magazine_m4a1 30
execute \
    as @a \
    run scoreboard players set @s bullet_m4a1 300
execute \
    as @a \
    run scoreboard players set @s magazine_m1014 8
execute \
    as @a \
    run scoreboard players set @s bullet_m1014 80
execute \
    as @a \
    run scoreboard players set @s magazine_awm 5
execute \
    as @a \
    run scoreboard players set @s bullet_awm 35
execute \
    as @a \
    run scoreboard players set @s magazine_m2 100
execute \
    as @a \
    run scoreboard players set @s bullet_m2 500

# ---- 分发饰品 ----
# 如果已有 gave_accessories 标签则不重复给
execute \
    as @a[tag=!gave_accessories] \
    run function accessories:give

# ---- 设置第一波 ----
scoreboard players set #pve horde 1

# ---- 公告 ----
tellraw @a [\
    {\
        "text":"[PVE] ","color":"gold"\
    },\
    {\
        "text":"尸潮来袭！坚持活下去！",\
        "color":"red"\
    }\
]