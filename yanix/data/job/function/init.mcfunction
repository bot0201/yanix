scoreboard objectives add kitbattle_exp dummy
scoreboard objectives add kitbattle_kills minecraft.killed:minecraft.player

# 调用各个职业的初始化函数
function job:job/classic_soldier/init
function job:job/archer/init
function job:job/mage/init
function job:job/assassin/init
function job:job/demolition/init
function job:job/healer/init

# 存活时长
function job:survival_time/init