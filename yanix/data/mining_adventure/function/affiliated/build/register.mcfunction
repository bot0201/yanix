# 附属数据包 API：注册一个建筑购买 trigger 计分板
# 用法：function mining_adventure:affiliated/build/register {objective:"trigger_build_foo"}
# 在附属包的 init 钩子（#mining_adventure:affiliated/init）中调用
$scoreboard objectives add $(objective) trigger