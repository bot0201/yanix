# 版本查询 trigger 处理器
scoreboard players enable @a version

# 合并为单次 @a 扫描
execute \
    as @a \
    if score @s version matches 1.. \
    run function main:version/trigger_handler_child