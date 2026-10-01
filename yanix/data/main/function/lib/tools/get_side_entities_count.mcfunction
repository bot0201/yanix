## 此文件用于监测任意实体左右侧实体计数
# 原理：半径足够大的圆可以近似看做一条直线
# 传参：as 实体、side宏（0=左,1=右）

scoreboard objectives add tmp dummy
scoreboard objectives add entities_side dummy
$scoreboard players set #lib_get_side_entities_side tmp $(side)

## 校验
# 显示校验失败
execute \
  if score #lib_get_side_entities_side tmp matches -2147483647..-1 \
  run tellraw @s {\
    "text":"执行失败!side宏应为0(左)/1(右)!",\
    "color":"red"\
  }
execute \
  if score #lib_get_side_entities_side tmp matches 2..2147483647 \
  run tellraw @s {\
    "text":"执行失败!side宏应为0(左)/1(右)!",\
    "color":"red"\
  }
# 校验成功与执行
execute \
  if score #lib_get_side_entities_side tmp matches 0 \
  rotated as @s \
  positioned ^1024 ^ ^ \
  store result score @s entities_side \
  if entity @e[distance=0..1024]

execute \
  if score #lib_get_side_entities_side tmp matches 0 \
  rotated as @s \
  positioned ^-1024 ^ ^ \
  store result score @s entities_side \
  if entity @e[distance=0..1024]
