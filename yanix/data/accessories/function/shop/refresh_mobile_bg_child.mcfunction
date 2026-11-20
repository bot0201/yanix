$execute \
    if items entity @s container.$(slot) * \
    unless items entity @s container.$(slot) *[custom_data~{menu:1}] \
    run function qm:chest/drop_slot_entity {slot:$(slot)}
$item replace entity @s container.$(slot) with minecraft:light_gray_stained_glass_pane[\
    minecraft:custom_data={\
        menu:1,\
        ui:1\
    },\
    minecraft:item_name="背景板",\
    minecraft:tooltip_display={hide_tooltip:true}\
]