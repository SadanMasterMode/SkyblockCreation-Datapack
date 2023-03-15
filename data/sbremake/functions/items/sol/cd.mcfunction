advancement revoke @s only sbremake:items/sol/left_click_cd
advancement revoke @s only sbremake:items/sol/right_click_cd

scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar [{"text":"This item is on cooldown!","color":"red","bold":false}]