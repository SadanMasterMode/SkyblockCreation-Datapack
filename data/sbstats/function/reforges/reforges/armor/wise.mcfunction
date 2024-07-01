data modify storage sbstats:reforge SelectedItem.components."minecraft:custom_data".Upgrades.reforge.type set value 'Wise'

item modify entity @s weapon.mainhand sbstats:reforge_type

data modify storage sbstats:data oldnametmp.oldname set from storage sbstats:data PlayerData.SelectedItem.components."minecraft:custom_name"
execute if entity @s[predicate=!sbstats:reforged] run function sbstats:macros/old_name with storage sbstats:data oldnametmp

data modify storage sbstats:item_name Name set from entity @s SelectedItem.components."minecraft:custom_data".SBStats.OldName
data modify storage sbstats:reforge Name set from entity @s SelectedItem.components."minecraft:custom_data".Upgrades.reforge.type

# Apply stats

execute if entity @s[predicate=sbstats:holding-rarities/holding-common] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.health set value 6
execute if entity @s[predicate=sbstats:holding-rarities/holding-common] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.speed set value 1
execute if entity @s[predicate=sbstats:holding-rarities/holding-common] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.intelligence set value 25

execute if entity @s[predicate=sbstats:holding-rarities/holding-uncommon] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.health set value 8
execute if entity @s[predicate=sbstats:holding-rarities/holding-uncommon] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.speed set value 1
execute if entity @s[predicate=sbstats:holding-rarities/holding-uncommon] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.intelligence set value 50

execute if entity @s[predicate=sbstats:holding-rarities/holding-rare] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.health set value 10
execute if entity @s[predicate=sbstats:holding-rarities/holding-rare] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.speed set value 1
execute if entity @s[predicate=sbstats:holding-rarities/holding-rare] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.intelligence set value 75

execute if entity @s[predicate=sbstats:holding-rarities/holding-epic] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.health set value 12
execute if entity @s[predicate=sbstats:holding-rarities/holding-epic] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.speed set value 2
execute if entity @s[predicate=sbstats:holding-rarities/holding-epic] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.intelligence set value 100

execute if entity @s[predicate=sbstats:holding-rarities/holding-leg] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.health set value 15
execute if entity @s[predicate=sbstats:holding-rarities/holding-leg] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.speed set value 3
execute if entity @s[predicate=sbstats:holding-rarities/holding-leg] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.intelligence set value 125

execute if entity @s[predicate=sbstats:holding-rarities/holding-mythic] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.health set value 20
execute if entity @s[predicate=sbstats:holding-rarities/holding-mythic] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.speed set value 3
execute if entity @s[predicate=sbstats:holding-rarities/holding-mythic] run data modify storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats.intelligence set value 150

function sbstats:stats/get_item_stats
item modify entity @s weapon.mainhand sbstats:reforge_stat
item modify entity @s weapon.mainhand sbstats:reforged
execute as @s run function sbstats:reforges/apply_lore