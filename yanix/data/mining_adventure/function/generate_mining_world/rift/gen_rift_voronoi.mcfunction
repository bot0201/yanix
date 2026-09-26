# ============================================================
#  Voronoi 裂谷挖掘
# ============================================================
#  逐列检测是否位于裂谷线上:
#    - 水平裂谷 0: Z ∈ [#r0z-1, #r0z+1]
#    - 水平裂谷 1: Z ∈ [#r1z-2, #r1z+1]
#    - 对角线裂谷 2: |X-Z| ≤ 1
#
#  若在裂谷: macro fill air 从 y=-10 到 y=-55
# ============================================================

# ---- 重置计数器 ----
scoreboard players set #ma_x MA_X 0
scoreboard players set #ma_z MA_Z 0

function mining_adventure:generate_mining_world/rift/gen_rift_column