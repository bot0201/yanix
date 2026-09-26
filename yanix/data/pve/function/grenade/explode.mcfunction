# @s = 手榴弹 marker 实体
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
    as @e[type=!player,type=!marker,type=!item,distance=..2.5] \
    run damage @s 60 explosion

execute \
    at @s \
    as @e[type=!player,type=!marker,type=!item,distance=2.5..5] \
    run damage @s 30 explosion

# 4. 对附近玩家造成伤害
execute \
    at @s \
    as @a[distance=..2.5] \
    run damage @s 20 explosion

execute \
    at @s \
    as @a[distance=2.5..5] \
    run damage @s 10 explosion

# 5. 清理手榴弹实体
kill @s