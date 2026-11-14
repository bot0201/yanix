# 换弹完成宏 (gun:_reloaded_for_gun)
# 参数:
#   gun_id      - 枪械标识 (m4a1/awm/m2)
#   base_mag    - 基础弹匣容量
#   extra_bullet - 扩容弹匣额外消耗备弹数
#   ext_mag     - 扩容后弹匣容量
scoreboard players set @s time 0
$tag @s remove reloading_$(gun_id)
$scoreboard players operation @s magazine_old_$(gun_id) = @s magazine_$(gun_id)
$scoreboard players remove @s bullet_$(gun_id) $(base_mag)
$execute \
    if score @s attach_mag = #mag_extended const \
    run scoreboard players remove @s bullet_$(gun_id) $(extra_bullet)
$scoreboard players operation @s magazine_$(gun_id) += @s magazine_old_$(gun_id)
$scoreboard players set @s magazine_$(gun_id) $(base_mag)
$execute \
    if score @s attach_mag = #mag_extended const \
    run scoreboard players set @s magazine_$(gun_id) $(ext_mag)
$scoreboard players set @s magazine_old_$(gun_id) 0