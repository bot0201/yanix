scoreboard objectives add item_count dummy
execute store result score #item_count tmp if entity @e[type=item]
