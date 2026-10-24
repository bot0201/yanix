# ============================================================
# 粒子效果渲染长方体线框
# ------------------------------------------------------------
# 调用前通过 data modify 写入 storage main:lib.fx.cuboid:
# {
#   particle: "粒子类型",
#   x1: 0.0d, y1: 0.0d, z1: 0.0d,    # 角1
#   x2: 5.0d, y2: 3.0d, z2: 5.0d,    # 角2
#   step: 0.5d,                        # 粒子间距(默认0.5)
#   delta: 0.0d                        # 粒子扩散(默认0.0)
# }
# 用法: function lib:fx/cuboid with storage main:lib.fx.cuboid
# ------------------------------------------------------------
# step 支持的常用值: 0.125 | 0.2 | 0.25 | 0.5(默认) | 1.0
# 若使用其他 step 值, 请预先设定 #lib_fx_step_inv tmp = round(1/step)
# ------------------------------------------------------------
# 示例:
#   data modify storage main:lib.fx.cuboid set value \
#     {particle:"minecraft:dust{color:[1.0,0.0,0.0],scale:2}",\
#      x1:0.0d,y1:0.0d,z1:0.0d,x2:5.0d,y2:3.0d,z2:5.0d,step:0.5d,delta:0.0d}
#   function lib:fx/cuboid with storage main:lib.fx.cuboid
# ============================================================

# 默认值
execute unless data storage main:lib.fx.cuboid particle \
    run data modify storage main:lib.fx.cuboid particle set value "minecraft:end_rod"
execute unless data storage main:lib.fx.cuboid step \
    run data modify storage main:lib.fx.cuboid step set value 0.5d
execute unless data storage main:lib.fx.cuboid delta \
    run data modify storage main:lib.fx.cuboid delta set value 0.0d
execute unless data storage main:lib.fx.cuboid x1 \
    run data modify storage main:lib.fx.cuboid x1 set value 0.0d
execute unless data storage main:lib.fx.cuboid y1 \
    run data modify storage main:lib.fx.cuboid y1 set value 0.0d
execute unless data storage main:lib.fx.cuboid z1 \
    run data modify storage main:lib.fx.cuboid z1 set value 0.0d
execute unless data storage main:lib.fx.cuboid x2 \
    run data modify storage main:lib.fx.cuboid x2 set value 0.0d
execute unless data storage main:lib.fx.cuboid y2 \
    run data modify storage main:lib.fx.cuboid y2 set value 0.0d
execute unless data storage main:lib.fx.cuboid z2 \
    run data modify storage main:lib.fx.cuboid z2 set value 0.0d

# ============================================================
# 步长倍数 inv = 1/step (每块粒子数)
# ============================================================
scoreboard players set #lib_fx_step_inv tmp 2
execute \
    if data storage main:lib.fx.cuboid {step:1.0d} \
    run scoreboard players set #lib_fx_step_inv tmp 1
execute \
    if data storage main:lib.fx.cuboid {step:0.25d} \
    run scoreboard players set #lib_fx_step_inv tmp 4
execute \
    if data storage main:lib.fx.cuboid {step:0.2d} \
    run scoreboard players set #lib_fx_step_inv tmp 5
execute \
    if data storage main:lib.fx.cuboid {step:0.125d} \
    run scoreboard players set #lib_fx_step_inv tmp 8

# ============================================================
# X 轴: 归一化 + 计算步数
# ============================================================
execute store result score #lib_fx_v1 tmp \
    run data get storage main:lib.fx.cuboid x1
execute store result score #lib_fx_v2 tmp \
    run data get storage main:lib.fx.cuboid x2

# 确保 storage 中 x1 <= x2 (score 计算 min/max 后写回)
scoreboard players operation #lib_fx_min tmp = #lib_fx_v1 tmp
scoreboard players operation #lib_fx_max tmp = #lib_fx_v2 tmp
execute \
    if score #lib_fx_v1 tmp > #lib_fx_v2 tmp \
    run scoreboard players operation #lib_fx_min tmp = #lib_fx_v2 tmp
execute \
    if score #lib_fx_v1 tmp > #lib_fx_v2 tmp \
    run scoreboard players operation #lib_fx_max tmp = #lib_fx_v1 tmp
execute store result storage main:lib.fx.cuboid x1 double 1 \
    run scoreboard players get #lib_fx_min tmp
execute store result storage main:lib.fx.cuboid x2 double 1 \
    run scoreboard players get #lib_fx_max tmp

# 重新读取 (此时 x1 <= x2)
scoreboard players operation #lib_fx_v1 tmp = #lib_fx_min tmp
scoreboard players operation #lib_fx_v2 tmp = #lib_fx_max tmp

# 长度 = v2 - v1
scoreboard players operation #lib_fx_v2 tmp -= #lib_fx_v1 tmp

# 步数 = 长度 * inv
scoreboard players operation #lib_fx_steps_x tmp = #lib_fx_v2 tmp
scoreboard players operation #lib_fx_steps_x tmp *= #lib_fx_step_inv tmp
execute \
    if score #lib_fx_steps_x tmp matches 0 \
    run scoreboard players set #lib_fx_steps_x tmp 1

# ============================================================
# Y 轴: 归一化 + 计算步数
# ============================================================
execute store result score #lib_fx_v1 tmp \
    run data get storage main:lib.fx.cuboid y1
execute store result score #lib_fx_v2 tmp \
    run data get storage main:lib.fx.cuboid y2

scoreboard players operation #lib_fx_min tmp = #lib_fx_v1 tmp
scoreboard players operation #lib_fx_max tmp = #lib_fx_v2 tmp
execute \
    if score #lib_fx_v1 tmp > #lib_fx_v2 tmp \
    run scoreboard players operation #lib_fx_min tmp = #lib_fx_v2 tmp
execute \
    if score #lib_fx_v1 tmp > #lib_fx_v2 tmp \
    run scoreboard players operation #lib_fx_max tmp = #lib_fx_v1 tmp
execute store result storage main:lib.fx.cuboid y1 double 1 \
    run scoreboard players get #lib_fx_min tmp
execute store result storage main:lib.fx.cuboid y2 double 1 \
    run scoreboard players get #lib_fx_max tmp

scoreboard players operation #lib_fx_v1 tmp = #lib_fx_min tmp
scoreboard players operation #lib_fx_v2 tmp = #lib_fx_max tmp

scoreboard players operation #lib_fx_v2 tmp -= #lib_fx_v1 tmp
scoreboard players operation #lib_fx_steps_y tmp = #lib_fx_v2 tmp
scoreboard players operation #lib_fx_steps_y tmp *= #lib_fx_step_inv tmp
execute \
    if score #lib_fx_steps_y tmp matches 0 \
    run scoreboard players set #lib_fx_steps_y tmp 1

# ============================================================
# Z 轴: 归一化 + 计算步数
# ============================================================
execute store result score #lib_fx_v1 tmp \
    run data get storage main:lib.fx.cuboid z1
execute store result score #lib_fx_v2 tmp \
    run data get storage main:lib.fx.cuboid z2

scoreboard players operation #lib_fx_min tmp = #lib_fx_v1 tmp
scoreboard players operation #lib_fx_max tmp = #lib_fx_v2 tmp
execute \
    if score #lib_fx_v1 tmp > #lib_fx_v2 tmp \
    run scoreboard players operation #lib_fx_min tmp = #lib_fx_v2 tmp
execute \
    if score #lib_fx_v1 tmp > #lib_fx_v2 tmp \
    run scoreboard players operation #lib_fx_max tmp = #lib_fx_v1 tmp
execute store result storage main:lib.fx.cuboid z1 double 1 \
    run scoreboard players get #lib_fx_min tmp
execute store result storage main:lib.fx.cuboid z2 double 1 \
    run scoreboard players get #lib_fx_max tmp

scoreboard players operation #lib_fx_v1 tmp = #lib_fx_min tmp
scoreboard players operation #lib_fx_v2 tmp = #lib_fx_max tmp

scoreboard players operation #lib_fx_v2 tmp -= #lib_fx_v1 tmp
scoreboard players operation #lib_fx_steps_z tmp = #lib_fx_v2 tmp
scoreboard players operation #lib_fx_steps_z tmp *= #lib_fx_step_inv tmp
execute \
    if score #lib_fx_steps_z tmp matches 0 \
    run scoreboard players set #lib_fx_steps_z tmp 1

# ============================================================
# 拷贝公共参数到 line storage
# ============================================================
$data modify storage main:lib.fx.cuboid.line set value \
    {particle:"$(particle)",delta:$(delta),dx:0.0d,dy:0.0d,dz:0.0d}

# ============================================================
# X 轴边: dx = step, dy = 0, dz = 0
# ============================================================
$data modify storage main:lib.fx.cuboid.line dx set value $(step)
data modify storage main:lib.fx.cuboid.line dy set value 0.0d
data modify storage main:lib.fx.cuboid.line dz set value 0.0d

# 边1: (x1, y1, z1) → (x2, y1, z1)  底前
scoreboard players operation #lib_fx_cuboid_steps tmp = #lib_fx_steps_x tmp
$execute \
    positioned $(x1) $(y1) $(z1) \
    run function lib:fx/cuboid/line with storage main:lib.fx.cuboid.line

# 边2: (x1, y2, z1) → (x2, y2, z1)  顶前
scoreboard players operation #lib_fx_cuboid_steps tmp = #lib_fx_steps_x tmp
$execute \
    positioned $(x1) $(y2) $(z1) \
    run function lib:fx/cuboid/line with storage main:lib.fx.cuboid.line

# 边3: (x1, y1, z2) → (x2, y1, z2)  底后
scoreboard players operation #lib_fx_cuboid_steps tmp = #lib_fx_steps_x tmp
$execute \
    positioned $(x1) $(y1) $(z2) \
    run function lib:fx/cuboid/line with storage main:lib.fx.cuboid.line

# 边4: (x1, y2, z2) → (x2, y2, z2)  顶后
scoreboard players operation #lib_fx_cuboid_steps tmp = #lib_fx_steps_x tmp
$execute \
    positioned $(x1) $(y2) $(z2) \
    run function lib:fx/cuboid/line with storage main:lib.fx.cuboid.line

# ============================================================
# Y 轴边: dx = 0, dy = step, dz = 0
# ============================================================
data modify storage main:lib.fx.cuboid.line dx set value 0.0d
$data modify storage main:lib.fx.cuboid.line dy set value $(step)
data modify storage main:lib.fx.cuboid.line dz set value 0.0d

# 边5: (x1, y1, z1) → (x1, y2, z1)  左前
scoreboard players operation #lib_fx_cuboid_steps tmp = #lib_fx_steps_y tmp
$execute \
    positioned $(x1) $(y1) $(z1) \
    run function lib:fx/cuboid/line with storage main:lib.fx.cuboid.line

# 边6: (x2, y1, z1) → (x2, y2, z1)  右前
scoreboard players operation #lib_fx_cuboid_steps tmp = #lib_fx_steps_y tmp
$execute \
    positioned $(x2) $(y1) $(z1) \
    run function lib:fx/cuboid/line with storage main:lib.fx.cuboid.line

# 边7: (x1, y1, z2) → (x1, y2, z2)  左后
scoreboard players operation #lib_fx_cuboid_steps tmp = #lib_fx_steps_y tmp
$execute \
    positioned $(x1) $(y1) $(z2) \
    run function lib:fx/cuboid/line with storage main:lib.fx.cuboid.line

# 边8: (x2, y1, z2) → (x2, y2, z2)  右后
scoreboard players operation #lib_fx_cuboid_steps tmp = #lib_fx_steps_y tmp
$execute \
    positioned $(x2) $(y1) $(z2) \
    run function lib:fx/cuboid/line with storage main:lib.fx.cuboid.line

# ============================================================
# Z 轴边: dx = 0, dy = 0, dz = step
# ============================================================
data modify storage main:lib.fx.cuboid.line dx set value 0.0d
data modify storage main:lib.fx.cuboid.line dy set value 0.0d
$data modify storage main:lib.fx.cuboid.line dz set value $(step)

# 边9:  (x1, y1, z1) → (x1, y1, z2)  底左
scoreboard players operation #lib_fx_cuboid_steps tmp = #lib_fx_steps_z tmp
$execute \
    positioned $(x1) $(y1) $(z1) \
    run function lib:fx/cuboid/line with storage main:lib.fx.cuboid.line

# 边10: (x2, y1, z1) → (x2, y1, z2)  底右
scoreboard players operation #lib_fx_cuboid_steps tmp = #lib_fx_steps_z tmp
$execute \
    positioned $(x2) $(y1) $(z1) \
    run function lib:fx/cuboid/line with storage main:lib.fx.cuboid.line

# 边11: (x1, y2, z1) → (x1, y2, z2)  顶左
scoreboard players operation #lib_fx_cuboid_steps tmp = #lib_fx_steps_z tmp
$execute \
    positioned $(x1) $(y2) $(z1) \
    run function lib:fx/cuboid/line with storage main:lib.fx.cuboid.line

# 边12: (x2, y2, z1) → (x2, y2, z2)  顶右
scoreboard players operation #lib_fx_cuboid_steps tmp = #lib_fx_steps_z tmp
$execute \
    positioned $(x2) $(y2) $(z1) \
    run function lib:fx/cuboid/line with storage main:lib.fx.cuboid.line