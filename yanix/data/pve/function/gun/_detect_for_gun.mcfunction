# 枪型检测宏 (gun:_detect_for_gun)
# 参数: gun_id - 枪械标识
$execute \
    if items entity @s weapon.mainhand minecraft:ender_eye[minecraft:custom_data~{gun:"$(gun_id)"}] \
    run tag @s add holding_$(gun_id)