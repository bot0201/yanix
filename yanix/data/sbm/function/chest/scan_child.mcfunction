# ========================================
# SBM 箱子菜单 - 单玩家扫描
# ========================================

# ---- 页面导航 ----
execute if items entity @s container.* *[custom_data~{sbm_action:"page_home"}] run return run function sbm:chest/action/page_home
execute if items entity @s container.* *[custom_data~{sbm_action:"page_menu1"}] run return run function sbm:chest/action/page_menu1
execute if items entity @s container.* *[custom_data~{sbm_action:"page_menu2"}] run return run function sbm:chest/action/page_menu2

# ---- 关闭 ----
execute if items entity @s container.* *[custom_data~{sbm_action:"close"}] run return run function sbm:chest/action/close

# ---- 主页功能 ----
execute if items entity @s container.* *[custom_data~{sbm_action:"tp_spawn"}] run return run function sbm:chest/action/tp_spawn
execute if items entity @s container.* *[custom_data~{sbm_action:"give_golden_apple"}] run return run function sbm:chest/action/give_golden_apple
execute if items entity @s container.* *[custom_data~{sbm_action:"give_iron"}] run return run function sbm:chest/action/give_iron
execute if items entity @s container.* *[custom_data~{sbm_action:"give_emerald"}] run return run function sbm:chest/action/give_emerald
execute if items entity @s container.* *[custom_data~{sbm_action:"give_cow_egg"}] run return run function sbm:chest/action/give_cow_egg
execute if items entity @s container.* *[custom_data~{sbm_action:"give_ender_pearl"}] run return run function sbm:chest/action/give_ender_pearl

# ---- 第1页功能 ----
execute if items entity @s container.* *[custom_data~{sbm_action:"give_nether_star"}] run return run function sbm:chest/action/give_nether_star
execute if items entity @s container.* *[custom_data~{sbm_action:"give_diamond_sword"}] run return run function sbm:chest/action/give_diamond_sword
execute if items entity @s container.* *[custom_data~{sbm_action:"give_shield"}] run return run function sbm:chest/action/give_shield
execute if items entity @s container.* *[custom_data~{sbm_action:"give_bow"}] run return run function sbm:chest/action/give_bow
execute if items entity @s container.* *[custom_data~{sbm_action:"give_crossbow"}] run return run function sbm:chest/action/give_crossbow
execute if items entity @s container.* *[custom_data~{sbm_action:"give_trident"}] run return run function sbm:chest/action/give_trident
execute if items entity @s container.* *[custom_data~{sbm_action:"give_totem"}] run return run function sbm:chest/action/give_totem

# ---- 第2页功能 ----
execute if items entity @s container.* *[custom_data~{sbm_action:"give_enchanted_golden_apple"}] run return run function sbm:chest/action/give_enchanted_golden_apple
execute if items entity @s container.* *[custom_data~{sbm_action:"give_elytra"}] run return run function sbm:chest/action/give_elytra
execute if items entity @s container.* *[custom_data~{sbm_action:"give_firework"}] run return run function sbm:chest/action/give_firework
execute if items entity @s container.* *[custom_data~{sbm_action:"give_xp_bottle"}] run return run function sbm:chest/action/give_xp_bottle
execute if items entity @s container.* *[custom_data~{sbm_action:"give_ender_chest"}] run return run function sbm:chest/action/give_ender_chest
execute if items entity @s container.* *[custom_data~{sbm_action:"give_crafting_table"}] run return run function sbm:chest/action/give_crafting_table
execute if items entity @s container.* *[custom_data~{sbm_action:"give_anvil"}] run return run function sbm:chest/action/give_anvil