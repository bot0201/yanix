---
alwaysApply: true
---
若一行execute代码中包含过多(两个以上)的子命令则使用`\`换行
e.g.:
```mcfunction
execute \
    positioned -10 69 -9 \
    as @a[distance=..8] \
    run clear @s *[custom_data~{ui:1}]
```
若一个类似json的参数或文本组件、物品组件等，则使用`\`换行
e.g.:
```mcfunction
{\
    "text":"[宇航员头盔]",\
    "color":"aqua",\
    "bold":true,\
    "click_event":{\
        "action":"run_command",\
        "command":"/trigger buy_astronaut_helmet set 1"\
    }\
}
```

另外，当execute子命令最后需要run不同命令，但前面的子命令（如if、positioned等）时，需要创建一个新的子文件并调用，有助于保持代码的可读性、可维护性并减少代码量。
e.g.:
```mcfunction
# 123_child.mcfunction
execute if score @s matches matches 1 run function yanix:123_child
```
```mcfunction
# yanix命名空间
# 123_child.mcfunction
say 何意味
scoreboard players set @s abc 1
```

在每次做完一次修改后，你一定要检查一次代码是否有报错，如果有报错，你需要及时修复。