# 附属包管理器：翻转启用状态（由 handle 调用，以 @s = 触发玩家 身份执行）

# 先消费 trigger（避免重复触发）
$scoreboard players set @s trigger_pack_$(id) 0

# 已启用 → 禁用
$execute \
    if score #$(id) pack_enabled matches 1 \
    run function main:affiliated/pack/disable_child {id:"$(id)", name:"$(name)"}

# 已禁用 → 启用
$execute \
    unless score #$(id) pack_enabled matches 1 \
    run function main:affiliated/pack/enable_child {id:"$(id)", name:"$(name)"}