execute \
    as @a[tag=closing] \
    at @s \
    anchored eyes \
    positioned ^ ^ ^ \
    as @e[\
        type=interaction,\
        tag=plg_menu,\
        distance=..0.2\
    ] \
    at @s \
    positioned ^ ^ ^1 \
    run function sbm:menu/flush
tag @a remove closing