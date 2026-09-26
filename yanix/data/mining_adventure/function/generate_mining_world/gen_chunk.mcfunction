# ============================================================
#  mining_world 地形区块生成器 —— 主入口
# ============================================================
#  调用前需设置:
#    scoreboard players set #ma_x MA_BASE_X <区块基准X>
#    scoreboard players set #ma_z MA_BASE_Z <区块基准Z>
#
#  区块尺寸: 30×32×60 (X×Z×Y, y=-60~y=0)
#  生成流程:
#    1. 逐列计算噪声高度 + 填充石头 + 铺基岩  (column/gen_column)
#    2. 矿物片状散布                           (ore/gen_ores)
#    3. Voronoi 裂谷挖掘                      (rift/gen_rift_voronoi)
#
#  核心机制:
#    - 噪声: 随机漂移法 → 平滑地形，范围约 y=-50..y=-5
#    - 填充: macro + NBT storage → 可变坐标 fill
#    - 矿物: 种子扩散法，加权权重，深度偏爱
#    - 裂谷: Voronoi 站点边界检测 → setblock air 挖沟
# ============================================================

# ---- 重置列计数器 ----
scoreboard players set #ma_x MA_X 0
scoreboard players set #ma_z MA_Z 0

# ---- 初始化噪声锚点 (用于随机漂移) ----
scoreboard players set #ma_prev MA_NOISE 0
scoreboard players set #ma_row_end MA_SEED 0

# ---- 第 0 步: Voronoi 站点预生成 ----
function mining_adventure:generate_mining_world/rift/gen_rift_seeds

# ---- 第 1 步: 逐列地形 ----
function mining_adventure:generate_mining_world/column/gen_column

# ---- 第 2 步: 矿物 ----
function mining_adventure:generate_mining_world/ore/gen_ores

# ---- 第 3 步: 裂谷 ----
function mining_adventure:generate_mining_world/rift/gen_rift_voronoi