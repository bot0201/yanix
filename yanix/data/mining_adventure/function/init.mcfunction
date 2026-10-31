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

# 房屋系统 - 购买触发
scoreboard objectives add house trigger
scoreboard objectives add house_place trigger
scoreboard objectives add house_buy trigger

# 电力系统 - 触发
scoreboard objectives add power_shop trigger
scoreboard objectives add power_solar trigger
scoreboard objectives add power_mining trigger

# 电力系统 - 电力存储
scoreboard objectives add electricity dummy

# 计算用常量由 lib:const 统一生成（0..1000），此处无需重复设置