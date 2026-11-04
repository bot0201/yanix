execute \
    unless entity @e[type=warden,name="僵王博士的第二代机甲"] \
    run function pve:spawn/bosses/dr_zomboss_2nd_generation_mech/spawn
scoreboard players set #summon_zombie recursion_running_count 0