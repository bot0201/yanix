# pve:horde_going_child - 波次推进：发送 debug 通知并递增 horde 计数
function lib:tools/show_debug {\
    module:"pve",\
    module_full_name:"\"PVE\"",\
    content:"\"尸潮波次推进\""\
}
scoreboard players add #pve horde 1
