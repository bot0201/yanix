$particle $(particle) ~ ~ ~ $(delta) $(delta) $(delta) 0 1 force
scoreboard players remove #lib_fx_cuboid_steps tmp 1
$execute \
    if score #lib_fx_cuboid_steps tmp matches 1.. \
    positioned ~$(dx) ~$(dy) ~$(dz) \
    run function main:lib/fx/cuboid/line with storage main:lib.fx.cuboid.line