execute as @a[\
    scores={\
        trigger_job_classic_soldier=1..\
    }\
] run function job:classic_soldier/classic_soldier
execute as @a[\
    scores={\
        trigger_job_classic_soldier=1..\
    }\
] run scoreboard players set @s trigger_job_classic_soldier 0

execute as @a[\
    scores={\
        trigger_job_archer=1..\
    }\
] run function job:archer/archer
execute as @a[\
    scores={\
        trigger_job_archer=1..\
    }\
] run scoreboard players set @s trigger_job_archer 0

execute as @a[\
    scores={\
        trigger_job_mage=1..\
    }\
] run function job:mage/mage
execute as @a[\
    scores={\
        trigger_job_mage=1..\
    }\
] run scoreboard players set @s trigger_job_mage 0

execute as @a[\
    scores={\
        trigger_job_healer=1..\
    }\
] run function job:healer/healer
execute as @a[\
    scores={\
        trigger_job_healer=1..\
    }\
] run scoreboard players set @s trigger_job_healer 0

execute as @a[\
    scores={\
        trigger_job_assassin=1..\
    }\
] run function job:assassin/assassin
execute as @a[\
    scores={\
        trigger_job_assassin=1..\
    }\
] run scoreboard players set @s trigger_job_assassin 0

execute as @a[\
    scores={\
        trigger_job_demolition=1..\
    }\
] run function job:demolition/demolition
execute as @a[\
    scores={\
        trigger_job_demolition=1..\
    }\
] run scoreboard players set @s trigger_job_demolition 0