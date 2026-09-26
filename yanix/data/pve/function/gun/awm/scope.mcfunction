# ============================================
#  AWM 开镜 — 潜行触发 / 松开取消 (run_per_2_tick)
# ============================================

# 开镜
execute \
    if predicate pve:is_sneaking \
    unless entity @s[tag=scoping_awm] \
    run function pve:gun/awm/scope_on

# 关镜
execute \
    if entity @s[tag=scoping_awm] \
    unless predicate pve:is_sneaking \
    run function pve:gun/awm/scope_off