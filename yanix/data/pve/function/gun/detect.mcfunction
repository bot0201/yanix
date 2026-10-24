# 清除旧枪型标签
tag @s remove holding_m4a1
tag @s remove holding_m1014
tag @s remove holding_awm
tag @s remove holding_m2

# M4A1：主手 末影之眼
execute \
    if items entity @s weapon.mainhand minecraft:ender_eye[minecraft:custom_data~{gun:"m4a1"}] \
    run tag @s add holding_m4a1

# M1014：主手 末影之眼
execute \
    if items entity @s weapon.mainhand minecraft:ender_eye[minecraft:custom_data~{gun:"m1014"}] \
    run tag @s add holding_m1014

# AWM：主手 末影之眼
execute \
    if items entity @s weapon.mainhand minecraft:ender_eye[minecraft:custom_data~{gun:"awm"}] \
    run tag @s add holding_awm

# M2 勃朗宁：主手 末影之眼
execute \
    if items entity @s weapon.mainhand minecraft:ender_eye[minecraft:custom_data~{gun:"m2"}] \
    run tag @s add holding_m2

# 同步配件数据（持枪标签已设定，直接统一调用）
function pve:gun/attach/sync_from_item