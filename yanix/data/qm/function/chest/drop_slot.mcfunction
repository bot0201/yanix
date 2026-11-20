# ========================================
# qm:chest/drop_slot（宏）
# 将当前容器指定槽位中的异物弹出为掉落物，避免被 item replace 覆盖丢失
# 需先 positioned 到容器位置再调用
# 参数：slot → 槽位编号（0~26）
# ========================================
summon item ~ ~1 ~ {\
    Tags:["qm_drop"],\
    Item:{id:"minecraft:stone",count:1},\
    PickupDelay:0\
}
$data modify entity @e[type=item,tag=qm_drop,distance=..3,sort=nearest,limit=1] Item set from block ~ ~ ~ Items[{Slot:$(slot)b}]
tag @e[type=item,tag=qm_drop,distance=..3,sort=nearest,limit=1] remove qm_drop
$item replace block ~ ~ ~ container.$(slot) with air