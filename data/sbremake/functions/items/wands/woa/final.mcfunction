advancement revoke @s only sbremake:items/wands/woa/left-click
scoreboard players set @s ascendCharge 0

scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar [{"text":"Used","color":"aqua","bold":false},{"text":" Rock Bottom","color":"gold","bold":false},{"text":"! (0 Charges)","color":"aqua","bold":false}]

execute at @s run playsound minecraft:block.end_gateway.spawn master @s ~ ~ ~