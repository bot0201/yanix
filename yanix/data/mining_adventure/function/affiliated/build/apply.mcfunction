# 建筑附属 API 核心实现：消费 trigger → 余额检查 → 扣款/放置 → 成功提示

# 先消费 trigger（无论成败都重置，避免余额不足时每 tick 重复触发）
$scoreboard players set @s $(objective) 0

# 余额不足：提示（不扣款）
$execute \
    unless score @s money matches $(price).. \
    run function mining_adventure:affiliated/build/insufficient {price:"$(price)"}

# 余额充足：扣款 → 放置结构 → 成功提示
$execute \
    if score @s money matches $(price).. \
    run function mining_adventure:affiliated/build/pay \
        {\
            template:"$(template)",\
            price:"$(price)",\
            pos:"$(pos)",\
            name:"$(name)"\
        }