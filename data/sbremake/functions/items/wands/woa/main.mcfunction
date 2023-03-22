scoreboard players set @p ascendCharge 1000
scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @p actionbar [{"text":"Used","color":"aqua","bold":false},{"text":" To the MAX","color":"gold","bold":false},{"text":"! (+1000 Charges)","color":"aqua","bold":false}]
execute at @p run playsound minecraft:block.end_portal_frame.fill master @p ~ ~ ~