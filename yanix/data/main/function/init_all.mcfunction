# 初始化所有函数

# 防止玩家重生到其他位置
gamerule respawn_radius 0

# 初始化一般重要性且不需要单独建一个的虚拟玩家专用的分数板目标
scoreboard objectives add tmp dummy

# 显示版本信息
function main:ver {"ver":"6.20.39"}

# 调用各个模块的初始化函数
function main:lib/init
function main:ctrl/init
function job:main/init
function mining_adventure:init
function pve:init
function sbm:init
function accessories:init
