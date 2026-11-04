execute \
    unless entity @e[type=warden,name="僵王博士的第一代机甲"] \
    run function pve:spawn/bosses/dr_zomboss_1st_generation_mech/spawn
scoreboard players set #summon_zombie recursion_running_count 0