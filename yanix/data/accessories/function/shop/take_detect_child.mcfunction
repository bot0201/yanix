# 购买标记物品 → 触发对应购买
execute \
    if items entity @s container.* *[custom_data~{buy:"astronaut_helmet"}] \
    run function accessories:shop/buy_astronaut_helmet

execute \
    if items entity @s container.* *[custom_data~{buy:"mysterious_goggles"}] \
    run function accessories:shop/buy_mysterious_goggles

# 对话框入口 → 打开饰品商店对话框
execute \
    if items entity @s container.* *[custom_data~{buy:"dialog"}] \
    run function accessories:shop/buy_dialog

# 清理无动作的 ui 物品（背景板、关闭按钮等）
clear @s *[custom_data~{ui:1}]