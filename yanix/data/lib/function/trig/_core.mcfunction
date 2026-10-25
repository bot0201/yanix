# lib:trig/_core (macro)
# 内部函数：同时计算 sin 和 cos
# 参数：angle（角度，单位：度，使用 Minecraft 偏航角约定）
# 输出：#trig_sin tmp（放大10000倍）, #trig_cos tmp（放大10000倍）

# 在当前位置对齐到整数坐标，以指定偏航角召唤标记实体
$execute \
    align xyz \
    rotated $(angle) 0.0 \
    run summon area_effect_cloud ~ ~ ~ {Tags:["trig_temp"]}

# 读取初始位置（放大10000倍）
execute \
    store result score #trig_init_x tmp \
    run data get entity @e[tag=trig_temp,limit=1] Pos[0] 10000
execute \
    store result score #trig_init_z tmp \
    run data get entity @e[tag=trig_temp,limit=1] Pos[2] 10000

# 让实体向其朝向移动1格
execute \
    as @e[tag=trig_temp,limit=1] \
    at @s \
    run tp @s ^ ^ ^1

# 读取移动后位置（放大10000倍）
execute \
    store result score #trig_final_x tmp \
    run data get entity @e[tag=trig_temp,limit=1] Pos[0] 10000
execute \
    store result score #trig_final_z tmp \
    run data get entity @e[tag=trig_temp,limit=1] Pos[2] 10000

# 计算 cos = (final_z - init_z) = cos(angle) * 10000
scoreboard players operation #trig_cos tmp = #trig_final_z tmp
scoreboard players operation #trig_cos tmp -= #trig_init_z tmp

# 计算 sin = -(final_x - init_x) = sin(angle) * 10000
scoreboard players operation #trig_sin_tmp tmp = #trig_final_x tmp
scoreboard players operation #trig_sin_tmp tmp -= #trig_init_x tmp
scoreboard players operation #trig_sin tmp = #0 const
scoreboard players operation #trig_sin tmp -= #trig_sin_tmp tmp

# 清理临时实体
kill @e[tag=trig_temp,limit=1]