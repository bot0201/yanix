# 检测枪型
function pve:gun/detect

# 副手配件装配检测（优先于换弹）
function pve:gun/attach/apply_offhand

# 各枪械换弹检查（由统一宏驱动）
function pve:gun/_reload_for_gun \
    {holding_tag:"holding_m4a1", gun_id:"m4a1", \
        mag_score:"magazine_m4a1", mag_max:"30", mag_max_extended:"40", \
        bullet_score:"bullet_m4a1", reload_handler:"pve:gun/m4a1/reload_handler"}
function pve:gun/_reload_for_gun \
    {holding_tag:"holding_m1014", gun_id:"m1014", \
        mag_score:"magazine_m1014", mag_max:"8", mag_max_extended:"10", \
        bullet_score:"bullet_m1014", reload_handler:"pve:gun/m1014/reload"}
function pve:gun/_reload_for_gun \
    {holding_tag:"holding_awm", gun_id:"awm", \
        mag_score:"magazine_awm", mag_max:"5", mag_max_extended:"7", \
        bullet_score:"bullet_awm", reload_handler:"pve:gun/awm/reload_handler"}
function pve:gun/_reload_for_gun \
    {holding_tag:"holding_m2", gun_id:"m2", \
        mag_score:"magazine_m2", mag_max:"100", mag_max_extended:"120", \
        bullet_score:"bullet_m2", reload_handler:"pve:gun/m2/reload_handler"}