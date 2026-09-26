tp 0.0 0.0 0.0
gamemode adventure
title @s times 0 70 20
execute \
    store result storage ban_time_s ban_time_s int 1 \
    run scoreboard players get @s soft_banned
function main:lib/fast_func/soft_ban/show_title with storage ban_time_s
$scoreboard players set @s soft_banned $(time)
$effect give @s blindness $(time) 255
$effect give @s slowness $(time) 255
$effect give @s mining_fatigue $(time) 255
$effect give @s resistance $(time) 255
$effect give @s regeneration $(time) 255
$effect give @s unluck $(time) 255
$effect give @s glowing $(time) 255
$effect give @s weakness $(time) 255
