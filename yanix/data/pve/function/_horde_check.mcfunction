# 波次调度宏 (summon:_horde_check)
# 参数: wave, zombies, babies
$execute \
    if score #pve horde matches $(wave) \
    store result score #pve random \
    run function pve:hordes/horde \
        {zombies:$(zombies),babies:$(babies)}