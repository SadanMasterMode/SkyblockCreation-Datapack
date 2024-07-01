scoreboard players add @s mana 250
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"+250 Mana (","color":"aqua"},{"text":"Rejuv","color":"gold"},{"text":")   ","color":"aqua"}]'