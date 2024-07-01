data modify storage sbstats:reforge SelectedItem.components."minecraft:custom_data".Upgrades.reforge.type set value 'Heavy'

item modify entity @s weapon.mainhand sbstats:reforge_type

data modify storage sbstats:data oldnametmp.oldname set from storage sbstats:data PlayerData.SelectedItem.components."minecraft:custom_name"
execute if entity @s[predicate=!sbstats:reforged] run function sbstats:macros/old_name with storage sbstats:data oldnametmp

data modify storage sbstats:item_name Name set from entity @s SelectedItem.components."minecraft:custom_data".SBStats.OldName
data modify storage sbstats:reforge Name set from entity @s SelectedItem.components."minecraft:custom_data".Upgrades.reforge.type

# Apply stats

execute if entity @s[predicate=sbstats:holding-rarities/holding-common] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.defense set value 25
execute if entity @s[predicate=sbstats:holding-rarities/holding-common] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.crit_damage set value -1
execute if entity @s[predicate=sbstats:holding-rarities/holding-common] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.speed set value -1

execute if entity @s[predicate=sbstats:holding-rarities/holding-uncommon] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.defense set value 35
execute if entity @s[predicate=sbstats:holding-rarities/holding-uncommon] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.crit_damage set value -2
execute if entity @s[predicate=sbstats:holding-rarities/holding-uncommon] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.speed set value -1

execute if entity @s[predicate=sbstats:holding-rarities/holding-rare] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.defense set value 50
execute if entity @s[predicate=sbstats:holding-rarities/holding-rare] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.crit_damage set value -2
execute if entity @s[predicate=sbstats:holding-rarities/holding-rare] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.speed set value -1

execute if entity @s[predicate=sbstats:holding-rarities/holding-epic] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.defense set value 65
execute if entity @s[predicate=sbstats:holding-rarities/holding-epic] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.crit_damage set value -3
execute if entity @s[predicate=sbstats:holding-rarities/holding-epic] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.speed set value -1

execute if entity @s[predicate=sbstats:holding-rarities/holding-leg] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.defense set value 80
execute if entity @s[predicate=sbstats:holding-rarities/holding-leg] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.crit_damage set value -5
execute if entity @s[predicate=sbstats:holding-rarities/holding-leg] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.speed set value -1

execute if entity @s[predicate=sbstats:holding-rarities/holding-mythic] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.defense set value 110
execute if entity @s[predicate=sbstats:holding-rarities/holding-mythic] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.crit_damage set value -7
execute if entity @s[predicate=sbstats:holding-rarities/holding-mythic] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.speed set value -1

function sbstats:stats/get_item_stats
item modify entity @s weapon.mainhand sbstats:reforge_stat
item modify entity @s weapon.mainhand sbstats:reforged
execute as @s run function sbstats:reforges/apply_lore