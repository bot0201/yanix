# ========================================
# 房屋预览 - 计算 cuboid 坐标并渲染
# 房屋范围：(ax+0, ay-1, az+0) -> (ax+29, ay+16, az+19)
# ========================================

# 读取锚点坐标到 score
execute store result score #house_ax tmp \
    run data get storage yanix:mining_adventure house_anchor[0]
execute store result score #house_ay tmp \
    run data get storage yanix:mining_adventure house_anchor[1]
execute store result score #house_az tmp \
    run data get storage yanix:mining_adventure house_anchor[2]

# 计算 cuboid 端点
scoreboard players operation #house_x1 tmp = #house_ax tmp
scoreboard players operation #house_x2 tmp = #house_ax tmp
scoreboard players add #house_x2 tmp 29

scoreboard players operation #house_y1 tmp = #house_ay tmp
scoreboard players remove #house_y1 tmp 1
scoreboard players operation #house_y2 tmp = #house_ay tmp
scoreboard players add #house_y2 tmp 16

scoreboard players operation #house_z1 tmp = #house_az tmp
scoreboard players operation #house_z2 tmp = #house_az tmp
scoreboard players add #house_z2 tmp 19

# 写入 cuboid storage
execute store result storage main:lib.fx.cuboid x1 double 1 \
    run scoreboard players get #house_x1 tmp
execute store result storage main:lib.fx.cuboid y1 double 1 \
    run scoreboard players get #house_y1 tmp
execute store result storage main:lib.fx.cuboid z1 double 1 \
    run scoreboard players get #house_z1 tmp
execute store result storage main:lib.fx.cuboid x2 double 1 \
    run scoreboard players get #house_x2 tmp
execute store result storage main:lib.fx.cuboid y2 double 1 \
    run scoreboard players get #house_y2 tmp
execute store result storage main:lib.fx.cuboid z2 double 1 \
    run scoreboard players get #house_z2 tmp
data modify storage main:lib.fx.cuboid particle \
    set value "minecraft:dust{color:[0.2,0.8,0.2],scale:2}"
data modify storage main:lib.fx.cuboid step set value 1.0d
data modify storage main:lib.fx.cuboid delta set value 0.0d

# 渲染 cuboid
function main:lib/fx/cuboid with storage main:lib.fx.cuboid