scoreboard players set @p wosToggle 0
execute if score @p spookyMute matches 0 run function sbremake:items/wos/on
execute if score @p spookyMute matches 1 if score @p wosToggle matches 0 run function sbremake:items/wos/off