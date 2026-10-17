# 启用所有 trigger
scoreboard players enable @a astronaut_helmet_on
scoreboard players enable @a astronaut_helmet_off
scoreboard players enable @a mysterious_goggles_on
scoreboard players enable @a mysterious_goggles_off
scoreboard players enable @a buy_astronaut_helmet
scoreboard players enable @a buy_mysterious_goggles

# 合并为单次 @a 扫描
execute \
    as @a \
    run function accessories:trigger_handler_child