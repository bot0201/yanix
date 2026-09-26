# ============================================================
#  Voronoi 裂谷站点预生成
# ============================================================
#  在区块内随机定义 3 条裂谷:
#    Rift 0: Z=random(8..12), 宽度 3 (Z: #rift_z-1 ~ #rift_z+1)
#    Rift 1: Z=random(18..24), 宽度 4
#    Rift 2: 对角线 |X-Z| <= 1
#
#  裂谷从 y=-10 向下挖到 y=-55, 形成"东非大裂谷"效果
#  存储方式: 每个裂谷的 Z 和 width 存为 #ma 伪玩家记分板
# ============================================================

# ---- Rift 0: Z ~ 10 ± 2 ----
execute \
    store result score #ma_r0z MA_SITE_Z \
    run random value 6..14
scoreboard players set #ma_r0w MA_SITE_X 3

# ---- Rift 1: Z ~ 21 ± 3 ----
execute \
    store result score #ma_r1z MA_SITE_Z \
    run random value 17..25
scoreboard players set #ma_r1w MA_SITE_X 4

# ---- Rift 2: 对角线标记 ----
# 无需存储坐标, gen_rift_voronoi 中直接计算 |X-Z|