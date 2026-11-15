# 附属数据包 API：周期性处理职业 trigger（enable + 检测 + 发放 kit）
# 用法：function job:affiliated/handle {objective:"trigger_job_foo", kit:"foo:job/foo_kit"}
# 在附属包的 tick 钩子（#job:affiliated/tick）中调用
$scoreboard players enable @a $(objective)

$execute \
    as @a \
    if score @s $(objective) matches 1.. \
    run function job:affiliated/apply \
        {\
            objective:"$(objective)",\
            kit:"$(kit)"\
        }