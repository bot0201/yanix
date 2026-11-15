# 附属包管理器：显示一个附属包及其启用状态，可点击切换
# 用法：function main:affiliated/pack/menu_entry {id:"foo", name:"示例包"}
# 在附属包合并进 #main:affiliated/pack/menu 标签的函数中调用
$execute \
    if score #$(id) pack_enabled matches 1 \
    run function main:affiliated/pack/menu_entry_child \
        {\
            id:"$(id)",\
            name:"$(name)",\
            color:"aqua",\
            status:"已启用（点击禁用）",\
            status_color:"green"\
        }
$execute \
    unless score #$(id) pack_enabled matches 1 \
    run function main:affiliated/pack/menu_entry_child \
        {\
            id:"$(id)",\
            name:"$(name)",\
            color:"gray",\
            status:"已禁用（点击启用）",\
            status_color:"red"\
        }