# 附属数据包 API：周期性处理建筑购买 trigger（enable + 检测 + 建造）
# 用法：function mining_adventure:affiliated/build/handle {objective:"trigger_build_foo", template:"minecraft:foo_house", price:"10", pos:"0 -60 0", name:"foo小屋"}
# 在附属包的 tick 钩子（#mining_adventure:affiliated/tick）中调用
# 取舍：register/handle 有意与 trigger 助手同构，但需向 apply 透传 template/price/pos，无法复用通用助手
$scoreboard players enable @a $(objective)

$execute \
    as @a \
    if score @s $(objective) matches 1.. \
    run function mining_adventure:affiliated/build/apply \
        {\
            objective:"$(objective)",\
            template:"$(template)",\
            price:"$(price)",\
            pos:"$(pos)",\
            name:"$(name)"\
        }