## 若需生成const的所有穷举值，请调用此函数而非func_cmd或const_rec
# 此功能会生成const的所有穷举值，包括2147483647，但是会导致服务器性能问题（通常会卡死好几秒甚至更长时间）
#pragma once    // 这非常何意味
execute \
    unless score #114 const matches 114 \
    run function lib:const/start_child