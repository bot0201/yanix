tag @s add skyblock_multi
execute \
    in skyblock:skyblock_multiplayer \
    run function skyblock:island/create

# debug 通知（持有 d_debug_sky_multi / a_debug 标签者可见）
function lib:tools/show_debug {\
    module:"sky_multi",\
    module_full_name:"\"空岛生存·多人\"",\
    content:"\"玩家选择了多人模式\""\
}
