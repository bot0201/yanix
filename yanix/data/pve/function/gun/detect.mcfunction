# 清除旧枪型标签
tag @s remove holding_m4a1
tag @s remove holding_m1014
tag @s remove holding_awm
tag @s remove holding_m2

function pve:gun/_detect_for_gun {gun_id:"m4a1"}
function pve:gun/_detect_for_gun {gun_id:"m1014"}
function pve:gun/_detect_for_gun {gun_id:"awm"}
function pve:gun/_detect_for_gun {gun_id:"m2"}

# 同步配件数据（持枪标签已设定，直接统一调用）
function pve:gun/attach/sync_from_item