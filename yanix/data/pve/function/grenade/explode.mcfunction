# @s = 手榴弹marker实体
# 1. 音效
execute \
    at @s \
    run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1

# 2. 粒子效果
execute \
    at @s \
    run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force

# 3. 对附近非玩家实体造成伤害（中心高伤）
execute \
    at @s \
    as @e[type=!player, type=!marker, type=!item, distance=..2.5] \
    run damage @s 60 explosion

execute \
    at @s \
    as @e[type=!player, type=!marker, type=!item, distance=2.5..5] \
    run damage @s 30 explosion

execute \
    at @s \
    as @e[type=!player, type=!marker, type=!item, distance=5..10] \
    run damage @s 10 explosion

# 4. 对附近玩家造成伤害（标记 + 减伤伤害）
execute \
    at @s \
    run tag @a[distance=..5] add pve_ff_hit

execute \
    at @s \
    as @a[distance=..2.5] \
    run damage @s 20 explosion

execute \
    at @s \
    as @a[distance=2.5..5] \
    run damage @s 10 explosion

# 4.5 炸队友检测
execute \
    if entity @a[tag=pve_ff_hit,nbt={DeathTime:0s},distance=..5] \
    at @s \
    run advancement grant @a[tag=gaming_pve,nbt=!{DeathTime:0s},distance=..5] only pve:team_kill

execute \
    at @s \
    run tag @a[tag=pve_ff_hit] remove pve_ff_hit

# 5. 清理手榴弹实体
kill @s