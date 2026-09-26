scoreboard objectives add player_count dummy "玩家数量"
execute store result score players player_count if entity @a
