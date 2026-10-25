scoreboard players operation #sb_cx tmp = @s skyblock_island
scoreboard players operation #sb_cx tmp *= #1000 const
execute \
    store result storage skyblock:island cx int 1 \
    run scoreboard players get #sb_cx tmp
data modify storage skyblock:island y1 set value 101
function skyblock:island/tp with storage skyblock:island