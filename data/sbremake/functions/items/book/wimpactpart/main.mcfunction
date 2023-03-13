scoreboard players set @p wimpactPartToggle 0
execute if score @p wimpactPart matches 1 run function sbremake:items/book/wimpactpart/on
execute if score @p wimpactPart matches 0 if score @p wimpactPartToggle matches 0 run function sbremake:items/book/wimpactpart/off