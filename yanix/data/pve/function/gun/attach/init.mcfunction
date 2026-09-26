# 配件系统初始化
scoreboard objectives add attach_scope dummy
scoreboard objectives add attach_muzzle dummy
scoreboard objectives add attach_grip dummy
scoreboard objectives add attach_mag dummy
scoreboard objectives add pve_attach trigger
scoreboard objectives add reload_target dummy

# 全局配件效果参数（可在此统一调整）
# 弹匣容量加成
scoreboard players set #mag_ext_m4a1 reload_target 10
scoreboard players set #mag_ext_m1014 reload_target 2
scoreboard players set #mag_ext_awm reload_target 2
# 快速弹匣换弹时间
scoreboard players set #quick_m4a1 reload_target 40
scoreboard players set #quick_m1014 reload_target 27
scoreboard players set #quick_awm reload_target 55
# 伤害惩罚（消音器）
scoreboard players set #supp_dmg reload_target 2
scoreboard players set #supp_dmg_awm reload_target 5
scoreboard players set #supp_dmg_m1014 reload_target 1