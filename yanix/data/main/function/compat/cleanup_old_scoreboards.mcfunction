# 删除旧版本遗留的计分板，保证兼容性
# 这些计分板在旧版本中存在但在新版本中被重命名或废弃，
# 调用此函数可在服务器升级时清理残留

# tmp → db (ea0a0698aa43794706df97c86ac93f2f7168567f: 僵王博士二代机甲修复)(对暗改抱歉，忘写了)
scoreboard objectives remove tmp

# mining_adventure_money → money (da2badf8cf3ab1757ac8f6dadc467686ec8246d2: 模拟经营货币统一)
scoreboard objectives remove mining_adventure_money