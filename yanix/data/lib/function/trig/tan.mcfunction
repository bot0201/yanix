# lib:trig/tan (macro)
# 计算正切值，输出到 #trig_tan tmp（放大10000倍）
# 参数：angle（角度，单位：度，使用 Minecraft 偏航角约定）
# 使用示例：function lib:trig/tan {angle:30}
# 注意：当 cos=0 时（90°、270°等），结果为 2147483647（表示无穷大）
$function lib:trig/_core {angle:$(angle)}
execute \
    if score #trig_cos tmp matches 0 \
    run scoreboard players set #trig_tan tmp 2147483647
execute \
    unless score #trig_cos tmp matches 0 \
    run function lib:trig/tan_compute