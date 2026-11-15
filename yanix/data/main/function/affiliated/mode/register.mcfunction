# 附属数据包 API：注册一个模式加入 trigger 计分板
# 用法：function main:affiliated/mode/register {objective:"foo_join"}
# 在附属包的 init 钩子（#main:affiliated/init）中调用
#
# 完整接入一个模式需要三步：
#   1. init 钩子调用本函数注册 trigger
#   2. tick 钩子调用 handle 处理加入
#   3. 将菜单入口函数合并进 #main:affiliated/mode/menu 标签，雪球菜单即可显示该模式
$scoreboard objectives add $(objective) trigger