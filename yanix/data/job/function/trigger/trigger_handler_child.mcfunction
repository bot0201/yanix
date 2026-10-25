execute \
    if score @s trigger_job_classic_soldier matches 1.. \
    run function job:classic_soldier/classic_soldier
execute \
    if score @s trigger_job_classic_soldier matches 1.. \
    run scoreboard players set @s trigger_job_classic_soldier 0

execute \
    if score @s trigger_job_archer matches 1.. \
    run function job:archer/archer
execute \
    if score @s trigger_job_archer matches 1.. \
    run scoreboard players set @s trigger_job_archer 0

execute \
    if score @s trigger_job_mage matches 1.. \
    run function job:mage/mage
execute \
    if score @s trigger_job_mage matches 1.. \
    run scoreboard players set @s trigger_job_mage 0

execute \
    if score @s trigger_job_healer matches 1.. \
    run function job:healer/healer
execute \
    if score @s trigger_job_healer matches 1.. \
    run scoreboard players set @s trigger_job_healer 0

execute \
    if score @s trigger_job_assassin matches 1.. \
    run function job:assassin/assassin
execute \
    if score @s trigger_job_assassin matches 1.. \
    run scoreboard players set @s trigger_job_assassin 0

execute \
    if score @s trigger_job_demolition matches 1.. \
    run function job:demolition/demolition
execute \
    if score @s trigger_job_demolition matches 1.. \
    run scoreboard players set @s trigger_job_demolition 0