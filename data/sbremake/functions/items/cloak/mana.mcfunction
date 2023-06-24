scoreboard players operation @s mana -= #25 percentageManaMod

schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"Creeper Veil","color":"light_purple"},{"text":" Took Damage! (-","color": "red"},{"score":{"name":"#25","objective":"percentageManaMod"},"color":"red"},{"text":" ✎ Mana)","color":"red"}]'