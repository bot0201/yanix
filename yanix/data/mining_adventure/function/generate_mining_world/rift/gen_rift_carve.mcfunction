# ============================================================
#  裂谷单列挖掘: 在当前列 (#ma_x,#ma_z) 从 y=-10 向下挖到 y=-55
# ============================================================

# ---- 计算绝对坐标 ----
scoreboard players operation #ma_abs MA_NOISE = #ma_x MA_BASE_X
scoreboard players operation #ma_abs MA_NOISE += #ma_x MA_X
scoreboard players operation #ma_abs MA_BEDROCK = #ma_z MA_BASE_Z
scoreboard players operation #ma_abs MA_BEDROCK += #ma_z MA_Z

# ---- 写入 storage ----
execute \
    store result storage ma:rift x int 1 \
    run scoreboard players get #ma_abs MA_NOISE
execute \
    store result storage ma:rift z int 1 \
    run scoreboard players get #ma_abs MA_BEDROCK

# ---- macro fill air ----
function mining_adventure:generate_mining_world/rift/gen_rift_fill with storage ma:rift