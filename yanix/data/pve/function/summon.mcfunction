# 第一波：2只僵尸
execute \
    if score #pve horde matches 1 \
    store result score #pve random \
    run function pve:hordes/horde1

# 第二波：4只僵尸
execute \
    if score #pve horde matches 2 \
    store result score #pve random \
    run function pve:hordes/horde2