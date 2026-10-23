execute \
    as @a \
    if items entity @s weapon.* clock[custom_data={"q_menu":1}] \
    anchored eyes \
    run summon chest_minecart ^ ^ ^ {Tags:["q_menu"]}