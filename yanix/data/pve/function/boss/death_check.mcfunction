# 一代机甲死亡检测
execute \
    store success score #pve boss1_check \
    if entity @e[type=warden,name="僵王博士的第一代机甲"]

execute \
    if score #pve boss1_spawned matches 1 \
    if score #pve boss1_check matches 0 \
    run tellraw @a[tag=gaming_pve] \
        {\
            "text":"<僵王博士> 跑路啦兄弟！跑路啦！要不咱就说长跑冠军这一块！",\
            "color":"gold"\
        }\

scoreboard players operation #pve boss1_spawned = #pve boss1_check

# 二代机甲死亡检测
execute \
    store success score #pve boss2_check \
    if entity @e[type=warden,name="僵王博士的第二代机甲"]

execute \
    if score #pve boss2_spawned matches 1 \
    if score #pve boss2_check matches 0 \
    run tellraw @a[tag=gaming_pve] \
        {\
            "text":"<僵王博士> 二代机甲也不行？你们等着，我还会回来的！",\
            "color":"gold"\
        }\

scoreboard players operation #pve boss2_spawned = #pve boss2_check