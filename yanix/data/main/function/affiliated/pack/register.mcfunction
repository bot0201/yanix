# 附属包管理器：注册一个可切换启用的附属包
# 用法：function main:affiliated/pack/register {id:"foo"}
# 在附属包的 init 钩子（#main:affiliated/init）中调用
# 默认禁用（pack_enabled = 0），通过雪球菜单「附属包」按钮启用
$scoreboard objectives add trigger_pack_$(id) trigger
$scoreboard players set #$(id) pack_enabled 0