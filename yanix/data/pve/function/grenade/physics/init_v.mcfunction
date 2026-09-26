# 初始速度（5m/s = 0.25格/tick，放大100倍就是25）
scoreboard players set #dz_speed grenade_math 25
# 假设玩家45度角往上扔，初速约0.25
scoreboard players set #dy_speed grenade_math 25

# 初始位置（放大100倍）
execute \
    as @a \
    at @s \
    if dimension minecraft:pve \
    run function main:lib/tools/get_pos

