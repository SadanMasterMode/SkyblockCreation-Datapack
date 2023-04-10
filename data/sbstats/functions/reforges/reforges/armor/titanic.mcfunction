data modify storage sbstats:reforge SelectedItem.tag.Upgrades.reforge.type set value 'Titanic'

item modify entity @s weapon.mainhand sbstats:reforge_type

item modify entity @s[nbt=!{SelectedItem:{tag:{Upgrades:{reforged:1b}}}}] weapon.mainhand sbstats:old_name
data modify storage sbstats:item_name Name set from entity @s SelectedItem.tag.SBStats.OldName
data modify storage sbstats:reforge Name set from entity @s SelectedItem.tag.Upgrades.reforge.type

# Apply stats

execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'COMMON'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.health set value 10
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'COMMON'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.defense set value 10

execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'UNCOMMON'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.health set value 15
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'UNCOMMON'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.defense set value 15

execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'RARE'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.health set value 20
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'RARE'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.defense set value 20

execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'EPIC'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.health set value 25
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'EPIC'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.defense set value 25

execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'LEGENDARY'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.health set value 35
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'LEGENDARY'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.defense set value 35

execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'MYTHIC'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.health set value 50
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'MYTHIC'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.defense set value 50

function sbstats:stats/get_item_stats
item modify entity @s weapon.mainhand sbstats:reforge_stat
item modify entity @s weapon.mainhand sbstats:reforged
execute as @s run function sbstats:reforges/apply_lore