item modify entity @s weapon.mainhand sbremake:items/gleaming_blade/set_nbt_on
data modify storage sbstats:data PlayerData set from entity @a[limit=1]
function sbstats:reforges/lore_builder

schedule function sbremake:manareset 1s
data modify storage sbremake:data Actionbar.AbilityUsage set value '{"text":"Your sword GLEAMS!   ","bold":true,"color":"gold"}'