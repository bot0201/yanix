# 附属数据包 API：周期性处理 trigger（enable + 检测 + 分发）
# 用法：function main:affiliated/trigger/handle {objective:"foo_buy", handler:"foo:buy/handler"}
# 在附属包的 tick 钩子（建议 #main:affiliated/tick_2）中调用
$scoreboard players enable @a $(objective)

$execute \
    as @a \
    if score @s $(objective) matches 1.. \
    run function main:affiliated/trigger/handle_child {objective:"$(objective)", handler:"$(handler)"}