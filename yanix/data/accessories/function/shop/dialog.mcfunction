# ========================================
# 饰品商店 - 对话式购买 (tellraw 平替)
# 无需跑到箱子前，点击 tellraw 消息即可购买
# ========================================

tellraw @s [{"text":"┌────────────────────────────┐","color":"dark_aqua"},{"text":"\n"},{"text":"   ★ 饰品商店 - 对话式购买 ★","color":"gold","bold":true},{"text":"\n"},{"text":"\n"},{"text":"  "},{"text":"[宇航员头盔]","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_astronaut_helmet set 1"}},{"text":"  "},{"text":"3 绿宝石  ","color":"gold"},{"text":"装备在头部","color":"gray","italic":true},{"text":"\n"},{"text":"\n"},{"text":"  "},{"text":"[神秘眼镜]","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_mysterious_goggles set 1"}},{"text":"  "},{"text":"3 绿宝石  ","color":"gold"},{"text":"装备在头部","color":"gray","italic":true},{"text":"\n"},{"text":"\n"},{"text":"└────────────────────────────┘","color":"dark_aqua"}]