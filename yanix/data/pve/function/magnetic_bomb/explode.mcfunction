# ========================================
# 磁吸炸弹 - 爆炸（高伤害）
# @s = 磁吸炸弹 marker 实体
# ========================================

# 1. 爆炸音效
execute \
    at @s \
    run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5

# 2. 爆炸粒子（大型烟雾 + 火焰）
execute \
    at @s \
    run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute \
    at @s \
    run particle minecraft:large_smoke ~ ~ ~ 1 1 1 0 20 force

# 3. 对附近非玩家实体造成伤害（比手雷高 2-3 倍）
execute \
    at @s \
    as @e[type=!player,type=!marker,type=!item,distance=..3] \
    run damage @s 110 explosion

execute \
    at @s \
    as @e[type=!player,type=!marker,type=!item,distance=3..6] \
    run damage @s 70 explosion

execute \
    at @s \
    as @e[type=!player,type=!marker,type=!item,distance=6..10] \
    run damage @s 20 explosion

execute \
    at @s \
    as @e[type=!player,type=!marker,type=!item,distance=10..15] \
    run damage @s 5 explosion

# 4. 对附近玩家造成伤害
execute \
    at @s \
    as @a[distance=..3] \
    run damage @s 110 explosion

execute \
    at @s \
    as @a[distance=3..6] \
    run damage @s 70 explosion

execute \
    at @s \
    as @a[distance=6..10] \
    run damage @s 20 explosion

execute \
    at @s \
    as @a[distance=10..15] \
    run damage @s 5 explosion

# 5. 若吸附在敌人身上，杀死目标敌人（秒杀贴脸）
execute \
    if entity @s[tag=magnetic_latched] \
    at @s \
    as @e[type=!player,type=!marker,type=!item,distance=..2,sort=nearest,limit=1] \
    run damage @s 200 explosion

# 6. 清理
kill @s