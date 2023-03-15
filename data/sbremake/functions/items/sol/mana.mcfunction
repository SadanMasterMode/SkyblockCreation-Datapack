advancement revoke @s only sbremake:items/sol/left_click_mana
advancement revoke @s only sbremake:items/sol/right_click_mana

scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @p actionbar [{"text":"You don't have enough mana to use this ability!","color":"red","bold":false}]