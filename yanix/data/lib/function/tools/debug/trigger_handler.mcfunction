# 启用所有 debug trigger
scoreboard players enable @a a_debug
scoreboard players enable @a d_debug_acc
scoreboard players enable @a d_debug_job
scoreboard players enable @a d_debug_sim
scoreboard players enable @a d_debug_pve
scoreboard players enable @a d_debug_qm
scoreboard players enable @a d_debug_sky
scoreboard players enable @a d_debug_sky_single
scoreboard players enable @a d_debug_sky_multi
scoreboard players enable @a d_debug_core
scoreboard players enable @a d_debug_lib

# 合并为单次 @a 扫描
execute \
    as @a \
    run function lib:tools/debug/trigger_handler_child
