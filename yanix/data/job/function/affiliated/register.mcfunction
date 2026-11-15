# 附属数据包 API：注册一个职业 trigger 计分板
# 用法：function job:affiliated/register {objective:"trigger_job_foo"}
# 在附属包的 init 钩子（#job:affiliated/init）中调用
$scoreboard objectives add $(objective) trigger