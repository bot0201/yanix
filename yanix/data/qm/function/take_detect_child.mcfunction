# ========================================
# qm:take_detect_child - 按物品菜单类型标记分发，并清理通用 ui 物品
# 需 as 玩家执行
# ========================================
execute \
    if items entity @s container.* *[custom_data~{menu:"accessories"}] \
    run function accessories:shop/take_detect_child

# 清理无动作的 ui 物品（背景板、关闭按钮等，所有菜单通用）
clear @s *[custom_data~{ui:1}]
