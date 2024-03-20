item modify entity @s weapon.mainhand sbremake:items/gleaming_blade/set_nbt_off
data modify storage sbstats:data PlayerData set from entity @a[limit=1]
function sbstats:reforges/lore_builder

item replace block 3000000 0 3000000 container.0 from entity @s weapon.mainhand
data remove block 3000000 0 3000000 Items[0].tag.Enchantments
item replace entity @s weapon.mainhand from block 3000000 0 3000000 container.0

schedule function sbremake:manareset 1s
data modify storage sbremake:data Actionbar.AbilityUsage set value '{"text":"Your sword dulls!   ","bold":true,"color":"gray"}'