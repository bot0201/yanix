# 请在以下区域添加其他计分板而不要搞到地形生成器的记分板里去
# 目前没有其他计分板

# ============================================================
#      地形生成器记分板 (generate_mining_world)
# ============================================================
# MA_HEIGHT   — 当前列地表高度（Y 坐标绝对值，范围 -59~0）
# MA_NOISE    — 噪声临时计算值
# MA_X        — 区块内当前列 X 偏移 (0~29)
# MA_Z        — 区块内当前列 Z 偏移 (0~31)
# MA_BASE_X   — 区块基准 X 坐标
# MA_BASE_Z   — 区块基准 Z 坐标
# MA_BEDROCK  — 当前列基岩层高度
# MA_SEED     — 区块伪随机种子
# MA_ORE_TYPE — 矿石类型选择 (1=coal, 2=iron, 3=gold, 4=diamond)
# MA_RIFT_D1  — Voronoi 到最近站点距离
# MA_RIFT_D2  — Voronoi 到次近站点距离
# MA_SITE_X   — Voronoi 站点 X 坐标（共 6 个站点）
# MA_SITE_Z   — Voronoi 站点 Z 坐标（共 6 个站点）
scoreboard objectives add MA_HEIGHT dummy
scoreboard objectives add MA_NOISE dummy
scoreboard objectives add MA_X dummy
scoreboard objectives add MA_Z dummy
scoreboard objectives add MA_BASE_X dummy
scoreboard objectives add MA_BASE_Z dummy
scoreboard objectives add MA_BEDROCK dummy
scoreboard objectives add MA_SEED dummy
scoreboard objectives add MA_ORE_TYPE dummy
scoreboard objectives add MA_RIFT_D1 dummy
scoreboard objectives add MA_RIFT_D2 dummy
scoreboard objectives add MA_SITE_X dummy
scoreboard objectives add MA_SITE_Z dummy