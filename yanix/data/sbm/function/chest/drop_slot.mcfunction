summon minecraft:item ~ ~ ~ {Tags:["sbm_temp_drop"],Item:{id:"minecraft:stone",count:1}}
$data modify entity @e[tag=sbm_temp_drop,type=item,sort=nearest,limit=1] Item set from block ~ ~ ~ container.$(slot)
tp @e[tag=sbm_temp_drop,type=item,sort=nearest,limit=1] @p
tag @e[tag=sbm_temp_drop,type=item,sort=nearest,limit=1] remove sbm_temp_drop