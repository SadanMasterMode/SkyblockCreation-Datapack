execute unless score @p mana <= @p 25ManaMod run scoreboard players operation @p mana -= @p 25ManaMod
scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @a actionbar ["",{"text":"Creeper Veil","color":"light_purple"},{"text":" Took Damage! (-","color": "red"},{"score":{"name":"@p","objective":"25ManaMod"},"color":"red"},{"text":" ✎ Mana)","color":"red"}]
scoreboard players reset @p dmgTaken