## 若需生成const的所有穷举值，请调用此函数而非func_cmd或const_rec
# 此功能会生成const的所有穷举值，包括2147483647，但是会导致服务器性能问题（通常会卡死好几秒甚至更长时间）
# 所以请仅执行一次
scoreboard players set #2147483647 const 2147483647
scoreboard players operation #const recursion_running_count = #2147483647 const
function main:lib/const/func_cmd with storage const_rec const_rec