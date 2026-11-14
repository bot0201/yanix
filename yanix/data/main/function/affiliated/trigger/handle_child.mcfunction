# 附属 trigger 子处理器（执行业务并重置触发值）
# 参数: objective - 计分板目标名, handler - 业务函数路径
$function $(handler)
$scoreboard players set @s $(objective) 0
# 附属 trigger 子处理器（执行业务并重置触发值）
# 参数: objective - 计分板目标名, handler - 业务函数路径
$function $(handler)
$scoreboard players set @s $(objective) 0
# 执行 trigger 对应的业务逻辑，然后重置该玩家的 trigger 值
$function $(handler)
$scoreboard players set @s $(objective) 0