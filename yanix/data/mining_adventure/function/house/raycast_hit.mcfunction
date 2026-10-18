# ========================================
# 射线命中 - 记录位置，渲染预览
# 此时执行位置已 align xyz，位于命中方块 southwest-bottom 角
# ========================================

# 记录锚点位置
summon minecraft:marker ~ ~ ~ {Tags:["house_anchor_temp"]}
data modify storage yanix:mining_adventure house_anchor \
    set from entity @e[tag=house_anchor_temp,limit=1] Pos
kill @e[tag=house_anchor_temp,limit=1]

# 渲染粒子预览
function mining_adventure:house/render_preview

# 提示玩家
tellraw @s [\
    {"text":"\n"},\
    {"text":"┌────────────────────────────┐","color":"dark_aqua"},\
    {"text":"\n"},\
    {"text":"   房屋位置预览","color":"gold","bold":true},\
    {"text":"\n"},\
    {"text":"\n"},\
    {"text":"  绿色粒子框标记了房屋范围","color":"white"},\
    {"text":"\n"},\
    {"text":"  输入 ","color":"white"},\
    {"text":"/trigger house_place set 1","color":"green","bold":true},\
    {"text":"\n"},\
    {"text":"  以确认此处为建造位置","color":"white"},\
    {"text":"\n"},\
    {"text":"\n"},\
    {"text":"  输入 ","color":"white"},\
    {"text":"/trigger house","color":"aqua","bold":true},\
    {"text":" 可重新预览","color":"white"},\
    {"text":"\n"},\
    {"text":"\n"},\
    {"text":"└────────────────────────────┘","color":"dark_aqua"}\
]
playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 1.5