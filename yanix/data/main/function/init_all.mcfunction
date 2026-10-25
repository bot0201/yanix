# 初始化所有函数

# 常数
scoreboard objectives add const dummy
function lib:const/start

# 防止玩家重生到其他位置
gamerule respawn_radius 0

# 初始化一般重要性且不需要单独建一个的虚拟玩家专用的分数板目标
scoreboard objectives add tmp dummy

# 调用各个模块的初始化函数
function pve:init
function lib:init
function job:init
function main:init
function accessories:init
function mining_adventure:init
function misc:init
