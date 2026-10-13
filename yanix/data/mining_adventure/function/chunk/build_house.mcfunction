## 起始点: x-z-的端点
# 应为x=0, z=0，所以起始点为0,-61,0。（因为包含地板所以Y轴为-60-1=-61）

# 通过指令放置结构
place template minecraft:default_house 0 -61 0
# 删除结构方块
setblock ~29 -60 ~ air

## 建造用按钮，使用成就触发

# 1. 牛圈
setblock ~8 -60 ~12 oak_button[face=floor]
summon text_display ~8 ~1.5 ~12 {\
        "text":"建造：牛圈",\
    }

# 2.猪圈 
setblock ~ ~ ~6 oak_button[face=floor]
summon text_display ~ ~1.5 ~6 {\
        "text":"建造：猪圈",\
    }
