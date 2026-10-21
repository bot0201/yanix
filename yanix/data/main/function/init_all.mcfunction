# 初始化所有函数

# 常数
scoreboard objectives add const dummy
function main:lib/const/start

# 防止玩家重生到其他位置
gamerule respawn_radius 0

# 初始化一般重要性且不需要单独建一个的虚拟玩家专用的分数板目标
scoreboard objectives add tmp dummy

# 初始化玩家在线时间
function main:online_time/init


# 调用各个模块的初始化函数
function pve:init
function sbm:init
function main:lib/init
function job:main/init
function main:ctrl/init
function main:users/init
function accessories:init
function mining_adventure:init
