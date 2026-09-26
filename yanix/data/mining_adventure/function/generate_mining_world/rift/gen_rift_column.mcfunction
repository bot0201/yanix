# ============================================================
#  逐列裂谷检测: 判断当前列是否在裂谷线上 → 挖掘 air
# ============================================================

# ---- 裂谷 0: Z 在 [#r0z-1, #r0z+1] ----
scoreboard players operation #ma_chk MA_HEIGHT = #ma_r0z MA_SITE_Z
scoreboard players operation #ma_chk MA_HEIGHT -= #ma_z MA_Z
execute \
    if score #ma_chk MA_HEIGHT matches -1..1 \
    run function mining_adventure:generate_mining_world/rift/gen_rift_carve

# ---- 裂谷 1: Z 在 [#r1z-2, #r1z+1] ----
scoreboard players operation #ma_chk MA_HEIGHT = #ma_r1z MA_SITE_Z
scoreboard players operation #ma_chk MA_HEIGHT -= #ma_z MA_Z
execute \
    if score #ma_chk MA_HEIGHT matches -2..1 \
    run function mining_adventure:generate_mining_world/rift/gen_rift_carve

# ---- 裂谷 2: 对角线 |X-Z| ≤ 1 ----
scoreboard players operation #ma_chk MA_HEIGHT = #ma_x MA_X
scoreboard players operation #ma_chk MA_HEIGHT -= #ma_z MA_Z
execute \
    if score #ma_chk MA_HEIGHT matches -1..1 \
    run function mining_adventure:generate_mining_world/rift/gen_rift_carve

# ---- 推进 ----
scoreboard players add #ma_z MA_Z 1
execute \
    if score #ma_z MA_Z matches 32.. \
    run scoreboard players add #ma_x MA_X 1
execute \
    if score #ma_z MA_Z matches 32.. \
    run scoreboard players set #ma_z MA_Z 0

# ---- 终止 ----
execute \
    if score #ma_x MA_X matches 30.. \
    run return 0

function mining_adventure:generate_mining_world/rift/gen_rift_column