# ========================================
# 房屋位置确认 - 锚点已存于 storage
# 直接弹出购买对话框
# ========================================

tellraw @s [{"text":"\u2714 位置已确认！","color":"green"}]
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
function mining_adventure:house/dialog