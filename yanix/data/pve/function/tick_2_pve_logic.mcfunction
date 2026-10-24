# PVE 每 2 tick 的世界级逻辑（仅在存在 PVE 玩家时执行）
scoreboard players add #pve time 1
function pve:horde_going
function pve:summon
function pve:boss/death_check
function pve:advancement/check_zombie_kills