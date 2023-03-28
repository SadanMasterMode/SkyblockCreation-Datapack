advancement revoke @s only sbremake:items/wands/woa/right-click
scoreboard players set @s ascendCharge 1000

scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar [{"text":"Used","color":"aqua","bold":false},{"text":" To the MAX","color":"gold","bold":false},{"text":"! (+1000 Charges)","color":"aqua","bold":false}]

playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~