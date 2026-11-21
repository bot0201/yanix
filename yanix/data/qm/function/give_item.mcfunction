# 给予触发玩家 qm 时钟，并锁定到热键栏第 9 格 (slot 8)
function lib:tools/lock_slot/start {"id":"clock","goal":8,"not_dos":8}
item replace entity @s hotbar.8 with clock[\
    minecraft:custom_data={qm:1,menu:"accessories"},\
    minecraft:item_name='{"text":"快捷菜单","color":"aqua","italic":false}',\
    minecraft:lore=[\
        '{"text":"手持以打开快捷箱子菜单","color":"gray","italic":false}'\
    ]\
]
