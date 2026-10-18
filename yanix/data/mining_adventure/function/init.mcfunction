# ============================================================
#  mining_adventure 初始化
# ============================================================
#  地形生成已迁移至 worldgen (data/mining_adventure/worldgen/)
#  旧 command-based 地形生成器已移除
#  如需在此添加新的计分板或其他初始化逻辑，请在下方继续
# ============================================================

# 卖矿系统 - 购买触发
scoreboard objectives add sell_ores trigger
scoreboard objectives add sell_coal trigger
scoreboard objectives add sell_iron trigger
scoreboard objectives add sell_gold trigger
scoreboard objectives add sell_diamond trigger

# 卖矿系统 - 货币计分板
scoreboard objectives add mining_adventure_money dummy

# 卖矿系统 - 计算用常量
scoreboard players set #1 const 1
scoreboard players set #2 const 2
scoreboard players set #3 const 3
scoreboard players set #4 const 4