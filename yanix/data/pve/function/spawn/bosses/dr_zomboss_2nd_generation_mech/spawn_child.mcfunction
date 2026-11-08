# 僵王博士的第二代机甲 - 召唤子实体
function pve:spawn/bosses/_spawn_child {boss_name:"僵王博士的第二代机甲",boss_tag:"dr_zomboss_2nd_generation_mech"}
effect give @e[tag=dr_zomboss_2nd_generation_mech,limit=1,sort=nearest,distance=..2] speed infinite 2 true
effect give @e[tag=dr_zomboss_2nd_generation_mech,limit=1,sort=nearest,distance=..2] resistance infinite 3 true
kill @s