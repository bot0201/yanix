# 初始化所有函数

# 常数
scoreboard objectives add const dummy
function lib:const/start

# 初始化一般重要性且不需要单独建一个的虚拟玩家专用的分数板目标
scoreboard objectives add db dummy

# 防止玩家重生到其他位置
gamerule respawn_radius 0

# 兼容性：迁移旧版本数据 → 清理旧版本遗留计分板
function main:compat/migrate
function main:compat/cleanup_old_scoreboards


# 版本号（格式: 阶段.主.功能.修订，例 d.0.0.1）
# #version db: 0=d(开发) 1=a(alpha) 2=b(公测) 3=v(正式)
# #1/#2/#3 v: 主/功能/修订 三段数字
scoreboard objectives add v dummy
scoreboard players set #version db 0
scoreboard players set #1 v 0
scoreboard players set #2 v 0
scoreboard players set #3 v 1

# 版本查询 trigger（玩家 /trigger version set 1）
scoreboard objectives add version trigger

# 版本查询 显示
scoreboard players set @a version 1

# 调用各个模块的初始化函数
function pve:init
function lib:init
function job:init
function main:init
function main:snowball_menu/init
function accessories:init
function mining_adventure:init
function misc:init
function skyblock:init

# 附属数据包 API：初始化钩子
function #main:affiliated/init