execute \
    in skyblock:skyblock_multiplayer \
    run function skyblock:kingdom/core/place with storage skyblock:core
tellraw @s [\
    {"text":"你的核心被摧毁了！剩余生命：","color":"red"},\
    {"score":{"name":"@s","objective":"skyblock_core_lives"},"color":"gold"}\
]
playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 1 0.5