tag @s add skyblock_single
function skyblock:island/singleplayer/create

# debug 通知（持有 d_debug_sky_single / a_debug 标签者可见）
function lib:tools/show_debug {\
    module:"sky_single",\
    module_full_name:"\"空岛生存·单人\"",\
    content:"\"玩家选择了单人模式\""\
}
