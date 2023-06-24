advancement revoke @s only sbremake:items/wands/woa/left-click
scoreboard players set @s ascendCharge 0

schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"0 Charges (","color":"aqua"},{"text":"Rock Bottom","color":"gold"},{"text":")   ","color":"aqua"}]'

execute at @s run playsound minecraft:block.end_gateway.spawn master @s ~ ~ ~