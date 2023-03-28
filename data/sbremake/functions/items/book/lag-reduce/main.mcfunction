scoreboard players set #lag-reduction_toggle fakePlayers 0
execute if score #lag-reduction fakePlayers matches 0 run function sbremake:items/book/debug-mode/on
execute if score #lag-reduction fakePlayers matches 1 if score #lag-reduction_toggle fakePlayers matches 0 run function sbremake:items/book/debug-mode/off