execute unless score @p mana <= #25 percentageManaMod run scoreboard players operation @p mana -= #25 percentageManaMod
scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @a actionbar ["",{"text":"Creeper Veil","color":"light_purple"},{"text":" Took Damage! (-","color": "red"},{"score":{"name":"#25","objective":"percentageManaMod"},"color":"red"},{"text":" ✎ Mana)","color":"red"}]
scoreboard players reset @p dmgTaken