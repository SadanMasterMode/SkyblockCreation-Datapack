scoreboard players set #debug-mode_toggle fakePlayers 0
execute if score #debug-mode fakePlayers matches 0 run function sbremake:items/book/debug-mode/on
execute if score #debug-mode fakePlayers matches 1 if score #debug-mode_toggle fakePlayers matches 0 run function sbremake:items/book/debug-mode/off