item modify entity @s weapon.mainhand sbremake:items/gleaming_blade/set_nbt_on
function sbstats:reforges/lore_builder

schedule function sbremake:manareset 1s
data modify storage sbremake:data Actionbar.AbilityUsage set value '{"text":"Your sword GLEAMS!   ","bold":true,"color":"gold"}'