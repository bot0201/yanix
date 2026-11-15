# 附属包管理器：周期性处理切换 trigger（enable + 检测 + 分发）
# 用法：function main:affiliated/pack/handle {id:"foo", name:"示例包"}
# 在附属包的 tick 钩子（建议 #main:affiliated/tick_2）中调用
# 取舍：本 API 独立于 mode/job/build，因为它管理的是「默认禁用、按需启用」的软开关，
#       而后者管理的是「注册即生效」的一次性接入，无法复用
$scoreboard players enable @a trigger_pack_$(id)

$execute \
    as @a \
    if score @s trigger_pack_$(id) matches 1.. \
    run function main:affiliated/pack/toggle_child {id:"$(id)", name:"$(name)"}