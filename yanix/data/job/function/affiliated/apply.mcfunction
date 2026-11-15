# 职业附属 API 核心实现：清旧装备 → 调用附属包 kit 函数 → 传送至 kitbattle 中心 → 重置 trigger
clear @s
$function $(kit)
execute \
    in kitbattle \
    run tp @s 0 85 0
$scoreboard players set @s $(objective) 0