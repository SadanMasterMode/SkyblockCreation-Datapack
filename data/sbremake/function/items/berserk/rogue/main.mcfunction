effect give @s speed 30 1 true
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-50 Mana (","color":"aqua"},{"text":"Speed Boost","color":"gold"},{"text":")   ","color":"aqua"}]'
scoreboard players remove @s mana 50