# 启用所有卖矿 trigger
scoreboard players enable @a sell_ores
scoreboard players enable @a sell_coal
scoreboard players enable @a sell_iron
scoreboard players enable @a sell_gold
scoreboard players enable @a sell_diamond

# 合并为单次 @a 扫描
execute \
    as @a \
    run function mining_adventure:sell/trigger_handler_child