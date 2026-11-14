# 显示当前数据包版本（格式: 阶段.主.功能.修订）
# 根据 db:#version 阶段值选择阶段字母
execute \
    if score #version db matches 0 \
    run function main:version/_show {stage:"d"}
execute \
    if score #version db matches 1 \
    run function main:version/_show {stage:"a"}
execute \
    if score #version db matches 2 \
    run function main:version/_show {stage:"b"}
execute \
    if score #version db matches 3 \
    run function main:version/_show {stage:"v"}