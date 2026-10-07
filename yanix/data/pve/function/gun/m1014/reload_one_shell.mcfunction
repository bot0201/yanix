# 消耗备弹
scoreboard players remove @s bullet_m1014 1
# 填入弹匣
scoreboard players add @s magazine_m1014 1
# 标记已进入装填循环
tag @s add m1014_reload_cycle
# 重置计时
scoreboard players set @s time 0

# 播放装填音效
playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.5

# 弹匣已满 → 结束
execute \
    if score @s magazine_m1014 matches 8.. \
    unless score @s attach_mag matches 1 \
    run function pve:gun/m1014/reloaded
execute \
    if score @s magazine_m1014 matches 10.. \
    if score @s attach_mag matches 1 \
    run function pve:gun/m1014/reloaded

# 备弹耗尽 → 结束
execute \
    if score @s bullet_m1014 matches ..0 \
    run function pve:gun/m1014/reloaded