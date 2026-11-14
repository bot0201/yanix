# 换弹开始处理宏 (gun:_reload_handler)
# 参数:
#   reloading_tag - 换弹标签名
scoreboard players set @s time 0
$tag @s add $(reloading_tag)