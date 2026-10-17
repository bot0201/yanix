# PVE 波次召唤调度器（使用统一宏 pve:hordes/horde）
# 波次 1：2 只僵尸
execute \
    if score #pve horde matches 1 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:2, babies:0}

# 波次 2：4 只僵尸
execute \
    if score #pve horde matches 2 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:4, babies:0}

# 波次 3：4 只僵尸
execute \
    if score #pve horde matches 3 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:4, babies:0}

# 波次 4：4 只僵尸
execute \
    if score #pve horde matches 4 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:4, babies:0}

# 波次 5：5 只僵尸
execute \
    if score #pve horde matches 5 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:5, babies:0}

# 波次 6：6 只僵尸
execute \
    if score #pve horde matches 6 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:6, babies:0}

# 波次 7：7 只僵尸
execute \
    if score #pve horde matches 7 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:7, babies:0}

# 波次 8：8 只僵尸
execute \
    if score #pve horde matches 8 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:8, babies:0}

# 波次 9：8 只僵尸
execute \
    if score #pve horde matches 9 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:8, babies:0}

# 波次 10：6 只僵尸 + 每人 2 个随机配件
execute \
    if score #pve horde matches 10 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:6, babies:0}
execute \
    if score #pve horde matches 10 \
    run function pve:hordes/give_attachments

# 波次 11：8 只僵尸
execute \
    if score #pve horde matches 11 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:8, babies:0}

# 波次 12：9 只僵尸
execute \
    if score #pve horde matches 12 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:9, babies:0}

# 波次 13：9 只僵尸
execute \
    if score #pve horde matches 13 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:9, babies:0}

# 波次 14：10 只僵尸
execute \
    if score #pve horde matches 14 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:10, babies:0}

# 波次 15：4 只僵尸 + 4 只小僵尸 + 僵王博士第一代机甲
execute \
    if score #pve horde matches 15 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:4, babies:4}
execute \
    if score #pve horde matches 15 \
    run function pve:spawn/bosses/dr_zomboss_1st_generation_mech/start

# 波次 16：10 只僵尸
execute \
    if score #pve horde matches 16 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:10, babies:0}

# 波次 17：11 只僵尸
execute \
    if score #pve horde matches 17 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:11, babies:0}

# 波次 18：11 只僵尸
execute \
    if score #pve horde matches 18 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:11, babies:0}

# 波次 19：12 只僵尸
execute \
    if score #pve horde matches 19 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:12, babies:0}

# 波次 20：13 只僵尸
execute \
    if score #pve horde matches 20 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:13, babies:0}

# 波次 21：13 只僵尸
execute \
    if score #pve horde matches 21 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:13, babies:0}

# 波次 22：14 只僵尸
execute \
    if score #pve horde matches 22 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:14, babies:0}

# 波次 23：14 只僵尸
execute \
    if score #pve horde matches 23 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:14, babies:0}

# 波次 24：15 只僵尸
execute \
    if score #pve horde matches 24 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:15, babies:0}

# 波次 25：6 只僵尸 + 僵王博士第二代机甲（速度 2、抗性 3）
execute \
    if score #pve horde matches 25 \
    store result score #pve random \
    run function pve:hordes/horde {zombies:6, babies:0}
execute \
    if score #pve horde matches 25 \
    run function pve:spawn/bosses/dr_zomboss_2nd_generation_mech/start