# 换弹计时宏 (gun:_reload_tick_for_gun)
# 参数:
#   gun_id      - 枪械标识
#   normal_time - 无快拔握把换弹时间
#   quick_time  - 快拔握把换弹时间
scoreboard players add @s time 1
$execute \
    if score @s time matches $(normal_time) \
    unless score @s attach_mag = #quick_pull const \
    run function pve:gun/$(gun_id)/reloaded
$execute \
    if score @s time matches $(quick_time) \
    if score @s attach_mag = #quick_pull const \
    run function pve:gun/$(gun_id)/reloaded