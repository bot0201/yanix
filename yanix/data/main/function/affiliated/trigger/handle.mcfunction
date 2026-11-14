# 附属 trigger 处理宏（每 tick 调用，供附属包复用）
# 参数: objective - 计分板目标名, handler - 触发后执行的业务函数路径
$scoreboard players enable @a $(objective)
$execute \
    as @a \
    if score @s $(objective) matches 1.. \
    run function main:affiliated/trigger/handle_child {objective:"$(objective)", handler:"$(handler)"}
# 附属 trigger 处理宏（每 tick 调用，供附属包复用）
# 参数: objective - 计分板目标名, handler - 触发后执行的业务函数路径
$scoreboard players enable @a $(objective)
$execute \
    as @a \
    if score @s $(objective) matches 1.. \
    run function main:affiliated/trigger/handle_child {objective:"$(objective)", handler:"$(handler)"}
# 附属数据包 API：周期性处理 trigger（enable + 检测 + 分发）
# 用法：function main:affiliated/trigger/handle {objective:"foo_buy", handler:"foo:buy/handler"}
# 在附属包的 tick 钩子（建议 #main:affiliated/tick_2）中调用
$scoreboard players enable @a $(objective)

$execute \
    as @a \
    if score @s $(objective) matches 1.. \
    run function main:affiliated/trigger/handle_child {objective:"$(objective)", handler:"$(handler)"}