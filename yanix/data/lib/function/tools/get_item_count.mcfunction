execute store result score #item_count db if entity @e[type=item]

# debug 通知（持有 d_debug_lib / a_debug 标签者可见）
function lib:tools/show_debug {\
    module:"lib",\
    module_full_name:"\"库\"",\
    content:"\"库函数 get_item_count 被调用\""\
}
