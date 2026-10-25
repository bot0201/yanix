execute \
    as @a \
    if items entity @s weapon.* clock[custom_data={"qm":1}] \
    anchored eyes \
    run summon chest_minecart ^ ^ ^ {Tags:["qm"]}