# 附属数据包 API：注册一个 trigger 计分板
# 用法：function main:affiliated/trigger/register {objective:"foo_buy"}
# 在附属包的 init 钩子（#main:affiliated/init）中调用
$scoreboard objectives add $(objective) trigger