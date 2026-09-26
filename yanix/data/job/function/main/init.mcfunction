scoreboard objectives add trigger_job_classic_soldier trigger
scoreboard objectives add trigger_job_archer trigger
scoreboard objectives add trigger_job_mage trigger
scoreboard objectives add trigger_job_healer trigger
scoreboard objectives add trigger_job_assassin trigger
scoreboard objectives add trigger_job_demolition trigger
scoreboard objectives add skill_fearless_cd dummy

scoreboard objectives add used_bow minecraft.used:bow
scoreboard objectives add skill_fearless_cd_seconds dummy

scoreboard objectives add const dummy
scoreboard players set #20 const 20
schedule function job:main/tick 5t