# 检测枪型
function pve:gun/detect

# 副手配件装配检测（优先于换弹）
function pve:gun/attach/apply_offhand

# M4A1 换弹
# --- 弹匣已满提示（无扩容: 30+, 扩容: 40+） ---
execute \
    if entity @s[tag=holding_m4a1] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m4a1"}] \
    if score @s magazine_m4a1 matches 30.. \
    unless score @s attach_mag matches 1 \
    run tellraw @s {"text":"你的弹匣是满的...","color":"red"}
execute \
    if entity @s[tag=holding_m4a1] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m4a1"}] \
    if score @s magazine_m4a1 matches 40.. \
    if score @s attach_mag matches 1 \
    run tellraw @s {"text":"你的弹匣是满的...","color":"red"}

# --- 无备弹提示 ---
execute \
    if entity @s[tag=holding_m4a1] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m4a1"}] \
    if score @s bullet_m4a1 matches ..0 \
    run tellraw @s {"text":"你已经没有备弹了！","color":"red"}

# --- 执行换弹 ---
execute \
    if entity @s[tag=holding_m4a1] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m4a1"}] \
    unless score @s magazine_m4a1 matches 30.. \
    unless score @s bullet_m4a1 matches ..0 \
    unless score @s attach_mag matches 1 \
    run function pve:gun/m4a1/reload_handler
execute \
    if entity @s[tag=holding_m4a1] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m4a1"}] \
    unless score @s magazine_m4a1 matches 40.. \
    unless score @s bullet_m4a1 matches ..0 \
    if score @s attach_mag matches 1 \
    run function pve:gun/m4a1/reload_handler

# M1014 换弹
# --- 弹匣已满提示 ---
execute \
    if entity @s[tag=holding_m1014] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m1014"}] \
    if score @s magazine_m1014 matches 8.. \
    unless score @s attach_mag matches 1 \
    run tellraw @s {"text":"你的弹匣是满的...","color":"red"}
execute \
    if entity @s[tag=holding_m1014] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m1014"}] \
    if score @s magazine_m1014 matches 10.. \
    if score @s attach_mag matches 1 \
    run tellraw @s {"text":"你的弹匣是满的...","color":"red"}

# --- 无备弹提示 ---
execute \
    if entity @s[tag=holding_m1014] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m1014"}] \
    if score @s bullet_m1014 matches ..0 \
    run tellraw @s {"text":"你已经没有备弹了！","color":"red"}

# --- 执行换弹 ---
execute \
    if entity @s[tag=holding_m1014] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m1014"}] \
    unless score @s magazine_m1014 matches 8.. \
    unless score @s bullet_m1014 matches ..0 \
    unless score @s attach_mag matches 1 \
    run function pve:gun/m1014/reload
execute \
    if entity @s[tag=holding_m1014] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m1014"}] \
    unless score @s magazine_m1014 matches 10.. \
    unless score @s bullet_m1014 matches ..0 \
    if score @s attach_mag matches 1 \
    run function pve:gun/m1014/reload

# AWM 换弹
# --- 弹匣已满提示（无扩容: 5+, 扩容: 7+） ---
execute \
    if entity @s[tag=holding_awm] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"awm"}] \
    if score @s magazine_awm matches 5.. \
    unless score @s attach_mag matches 1 \
    run tellraw @s {"text":"你的弹匣是满的...","color":"red"}
execute \
    if entity @s[tag=holding_awm] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"awm"}] \
    if score @s magazine_awm matches 7.. \
    if score @s attach_mag matches 1 \
    run tellraw @s {"text":"你的弹匣是满的...","color":"red"}

# --- 无备弹提示 ---
execute \
    if entity @s[tag=holding_awm] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"awm"}] \
    if score @s bullet_awm matches ..0 \
    run tellraw @s {"text":"你已经没有备弹了！","color":"red"}

# --- 执行换弹 ---
execute \
    if entity @s[tag=holding_awm] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"awm"}] \
    unless score @s magazine_awm matches 5.. \
    unless score @s bullet_awm matches ..0 \
    unless score @s attach_mag matches 1 \
    run function pve:gun/awm/reload_handler
execute \
    if entity @s[tag=holding_awm] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"awm"}] \
    unless score @s magazine_awm matches 7.. \
    unless score @s bullet_awm matches ..0 \
    if score @s attach_mag matches 1 \
    run function pve:gun/awm/reload_handler

# M2 勃朗宁 换弹
# --- 弹匣已满提示（无扩容: 100+, 扩容: 120+） ---
execute \
    if entity @s[tag=holding_m2] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m2"}] \
    if score @s magazine_m2 matches 100.. \
    unless score @s attach_mag matches 1 \
    run tellraw @s {"text":"你的弹链是满的...","color":"red"}
execute \
    if entity @s[tag=holding_m2] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m2"}] \
    if score @s magazine_m2 matches 120.. \
    if score @s attach_mag matches 1 \
    run tellraw @s {"text":"你的弹链是满的...","color":"red"}

# --- 无备弹提示 ---
execute \
    if entity @s[tag=holding_m2] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m2"}] \
    if score @s bullet_m2 matches ..0 \
    run tellraw @s {"text":"你已经没有备弹了！","color":"red"}

# --- 执行换弹 ---
execute \
    if entity @s[tag=holding_m2] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m2"}] \
    unless score @s magazine_m2 matches 100.. \
    unless score @s bullet_m2 matches ..0 \
    unless score @s attach_mag matches 1 \
    run function pve:gun/m2/reload_handler
execute \
    if entity @s[tag=holding_m2] \
    at @s \
    if dimension minecraft:pve \
    if items entity @s weapon.offhand minecraft:ender_eye[minecraft:custom_data~{gun:"m2"}] \
    unless score @s magazine_m2 matches 120.. \
    unless score @s bullet_m2 matches ..0 \
    if score @s attach_mag matches 1 \
    run function pve:gun/m2/reload_handler