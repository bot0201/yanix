# PVE 波次推进（每波约 30 秒 / 600 time units）
# 波次 1
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 0..600 \
    unless score #pve horde matches 1.. \
    run scoreboard players add #pve horde 1

# 波次 2
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 601..1200 \
    unless score #pve horde matches 2.. \
    run scoreboard players add #pve horde 1

# 波次 3
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 1201..1800 \
    unless score #pve horde matches 3.. \
    run scoreboard players add #pve horde 1

# 波次 4
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 1801..2400 \
    unless score #pve horde matches 4.. \
    run scoreboard players add #pve horde 1

# 波次 5
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 2401..3000 \
    unless score #pve horde matches 5.. \
    run scoreboard players add #pve horde 1

# 波次 6
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 3001..3600 \
    unless score #pve horde matches 6.. \
    run scoreboard players add #pve horde 1

# 波次 7
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 3601..4200 \
    unless score #pve horde matches 7.. \
    run scoreboard players add #pve horde 1

# 波次 8
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 4201..4800 \
    unless score #pve horde matches 8.. \
    run scoreboard players add #pve horde 1

# 波次 9
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 4801..5400 \
    unless score #pve horde matches 9.. \
    run scoreboard players add #pve horde 1

# 波次 10（配件波）
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 5401..6000 \
    unless score #pve horde matches 10.. \
    run scoreboard players add #pve horde 1

# 波次 11
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 6001..6600 \
    unless score #pve horde matches 11.. \
    run scoreboard players add #pve horde 1

# 波次 12
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 6601..7200 \
    unless score #pve horde matches 12.. \
    run scoreboard players add #pve horde 1

# 波次 13
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 7201..7800 \
    unless score #pve horde matches 13.. \
    run scoreboard players add #pve horde 1

# 波次 14
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 7801..8400 \
    unless score #pve horde matches 14.. \
    run scoreboard players add #pve horde 1

# 波次 15（僵王博士第一代机甲）
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 8401..9000 \
    unless score #pve horde matches 15.. \
    run scoreboard players add #pve horde 1

# 波次 16
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 9001..9600 \
    unless score #pve horde matches 16.. \
    run scoreboard players add #pve horde 1

# 波次 17
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 9601..10200 \
    unless score #pve horde matches 17.. \
    run scoreboard players add #pve horde 1

# 波次 18
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 10201..10800 \
    unless score #pve horde matches 18.. \
    run scoreboard players add #pve horde 1

# 波次 19
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 10801..11400 \
    unless score #pve horde matches 19.. \
    run scoreboard players add #pve horde 1

# 波次 20
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 11401..12000 \
    unless score #pve horde matches 20.. \
    run scoreboard players add #pve horde 1

# 波次 21
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 12001..12600 \
    unless score #pve horde matches 21.. \
    run scoreboard players add #pve horde 1

# 波次 22
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 12601..13200 \
    unless score #pve horde matches 22.. \
    run scoreboard players add #pve horde 1

# 波次 23
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 13201..13800 \
    unless score #pve horde matches 23.. \
    run scoreboard players add #pve horde 1

# 波次 24
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 13801..14400 \
    unless score #pve horde matches 24.. \
    run scoreboard players add #pve horde 1

# 波次 25（僵王博士第二代机甲）
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 14401..15000 \
    unless score #pve horde matches 25.. \
    run scoreboard players add #pve horde 1
