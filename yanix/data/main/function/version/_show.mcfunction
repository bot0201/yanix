# 版本显示宏（query 调用）
# 参数: stage（阶段字母: d/a/b/v）
$tellraw @s [\
    {"text":"当前数据包版本: $(stage).","color":"aqua"},\
    {"score":{"name":"#1","objective":"v"}},\
    {"text":"."},\
    {"score":{"name":"#2","objective":"v"}},\
    {"text":"."},\
    {"score":{"name":"#3","objective":"v"}}\
]