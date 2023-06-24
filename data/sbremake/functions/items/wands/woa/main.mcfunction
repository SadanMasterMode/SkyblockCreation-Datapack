advancement revoke @s only sbremake:items/wands/woa/right-click
scoreboard players set @s ascendCharge 1000

schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"+1000 Charges (","color":"aqua"},{"text":"To the MAX","color":"gold"},{"text":")   ","color":"aqua"}]'

playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~