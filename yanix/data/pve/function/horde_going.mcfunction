# PVE 波次推进逻辑（已通过 if entity 预检，无需重复 @a）
# 公式: target = floor((time - 1) / 600) + 1（利用整除向零舍入），上限 25
scoreboard players operation #target tmp = #pve time
scoreboard players remove #target tmp 1
scoreboard players operation #target tmp /= #600 const
scoreboard players add #target tmp 1
execute \
    if score #target tmp matches 26.. \
    run scoreboard players set #target tmp 25
execute \
    unless score #pve horde >= #target tmp \
    run scoreboard players add #pve horde 1