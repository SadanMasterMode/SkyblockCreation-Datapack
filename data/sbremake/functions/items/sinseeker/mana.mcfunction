scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar [{"text":"You need ","color":"red"},{"score":{"name":"@p","objective":"endResult"},"color":"red"},{"text":" Mana to use this ability!","color":"red"}]