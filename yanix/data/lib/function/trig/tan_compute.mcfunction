# lib:trig/tan_compute
# tan 的实际除法计算（tan = sin/cos）
# 公式：tan*10000 = (sin*10000) * 10000 / (cos*10000)
scoreboard players operation #trig_tan db = #trig_sin db
scoreboard players operation #trig_tan db *= #10000 const
scoreboard players operation #trig_tan db /= #trig_cos db