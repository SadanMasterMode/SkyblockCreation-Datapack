scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar {"text":"You have too much mana to use this item!","color":"red"}