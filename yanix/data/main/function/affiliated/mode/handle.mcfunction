# 附属数据包 API：周期性处理模式加入 trigger（enable + 检测 + 分发）
# 用法：function main:affiliated/mode/handle {objective:"foo_join", tag:"gaming_foo", dimension:"minecraft:foo", pos:"0 74 -14"}
# 在附属包的 tick 钩子（建议 #main:affiliated/tick_2）中调用
$scoreboard players enable @a $(objective)

$execute \
    as @a \
    if score @s $(objective) matches 1.. \
    run function main:affiliated/mode/join \
        {\
            objective:"$(objective)",\
            tag:"$(tag)",\
            dimension:"$(dimension)",\
            pos:"$(pos)"\
        }