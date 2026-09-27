## PVE 游戏开始函数
# 包含：重置所有玩家状态、分发武器、开启第一波

# ---- 重置所有玩家分数 ----
scoreboard players set #pve horde 0

function pve:start_game/remove_tags

function pve:start_game/reset_bullet

function pve:start_game/reset_misc

# ---- 清除饰品标签（不删除 have_* 和 *_on，补枪开局不应损失饰品） ----

# ---- 添加 PVE 游戏标签 ----
tag @a add gaming_pve

# ---- 清除背包并分发武器 ----
function pve:start_game/give_guns

# ---- 分发饰品 ----
# 如果已有 gave_accessories 标签则不重复给
execute \
    as @a[tag=!gave_accessories] \
    run function accessories:give

# ---- 设置第一波 ----
scoreboard players set #pve horde 1

# ---- 公告 ----
tellraw @a [\
    {\
        "text":"[PVE] ","color":"gold"\
    },\
    {\
        "text":"尸潮来袭！坚持活下去！",\
        "color":"red"\
    }\
]