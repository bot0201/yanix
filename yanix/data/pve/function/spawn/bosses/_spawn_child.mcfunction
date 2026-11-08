# Boss 召唤子实体宏 (pve:spawn/bosses/_spawn_child)
# 参数:
#   boss_name - Boss 自定义名称
#   boss_tag  - Boss 标签 (可为空字符串)
execute \
    store result entity @s Rotation[0] float 1 \
    run scoreboard players get #pve random
tp @s ^ ^ ^12
execute store result score @s count if entity @a[distance=..11.99,tag=gaming_pve]
execute \
    if score @s count matches 1.. \
    run tag @s add invalid
scoreboard players set @s count 0
execute store result score @s count if entity @a[distance=11.99..12.01,tag=gaming_pve]
execute \
    if score @s count matches ..0 \
    run tag @s add invalid
execute \
    if score @s count matches 2.. \
    run tag @s add invalid
$execute \
    unless entity @s[tag=invalid] \
    run summon warden ~ ~ ~ {\
        CustomName:"$(boss_name)",\
        Tags:[\
            "$(boss_tag)"\
        ]\
    }