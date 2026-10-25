# 刺客的隐身技能
execute \
    if entity @a[tag=assassin_fighting,limit=1] \
    run function job:assassin/skill_invis

# 经典战士的无畏技能
execute \
    if entity @a[tag=classic_soilder,limit=1] \
    run function job:classic_soldier/classic_soldier_skill_fearless

# 刺客的秒杀技能
execute \
    if entity @a[tag=assassin_fighting,limit=1] \
    run function job:assassin/skill_one_shot

# 爆破手的水晶箭
execute \
    if entity @a[tag=demolition_fighting,limit=1] \
    run function job:demolition/crystal_tick

# 弓箭手的tp箭
execute \
    if entity @a[scores={used_bow=1..},limit=1] \
    run function job:archer/tp_bow

# 启用职业trigger
function job:trigger/enable_trigger

# 处理职业trigger
function job:trigger/trigger_handler

# 处理职业cd
function job:cd/cd_handler

# 处理职业cd渲染
execute \
    as @a[tag=skill_fearless_cd] \
    run function job:cd/cd_display_child

execute \
    as @e[\
        type=minecraft:marker,\
        tag=kitbattle_centre\
    ] \
    at @s run execute \
        as @a[distance=95..] \
        at @s \
        if dimension minecraft:kitbattle \
        run function job:out_of_world_child

# 中国人能飞成就
function job:advancement/condition/elytra