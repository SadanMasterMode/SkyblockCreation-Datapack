scoreboard players operation @s mana -= #25 percentageManaMod

scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar ["",{"text":"Creeper Veil","color":"light_purple"},{"text":" Took Damage! (-","color": "red"},{"score":{"name":"#25","objective":"percentageManaMod"},"color":"red"},{"text":" ✎ Mana)","color":"red"}]