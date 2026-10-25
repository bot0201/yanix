# lib:trig/tan_compute
# tan 的实际除法计算（tan = sin/cos）
# 公式：tan*10000 = (sin*10000) * 10000 / (cos*10000)
scoreboard players operation #trig_tan tmp = #trig_sin tmp
scoreboard players operation #trig_tan tmp *= #10000 const
scoreboard players operation #trig_tan tmp /= #trig_cos tmp