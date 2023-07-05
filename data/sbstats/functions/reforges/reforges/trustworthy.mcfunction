data modify storage sbstats:reforge SelectedItem.tag.Upgrades.reforge.type set value 'Trustworthy'

item modify entity @s weapon.mainhand sbstats:reforge_type

item modify entity @s[predicate=!sbstats:reforged] weapon.mainhand sbstats:old_name
data modify storage sbstats:item_name Name set from entity @s SelectedItem.tag.SBStats.OldName
data modify storage sbstats:reforge Name set from entity @s SelectedItem.tag.Upgrades.reforge.type

# Apply stats

execute if entity @s[predicate=sbstats:holding-rarities/holding-common] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.damage set value 20
execute if entity @s[predicate=sbstats:holding-rarities/holding-common] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.speed set value 20

execute if entity @s[predicate=sbstats:holding-rarities/holding-uncommon] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.damage set value 40
execute if entity @s[predicate=sbstats:holding-rarities/holding-uncommon] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.speed set value 40

execute if entity @s[predicate=sbstats:holding-rarities/holding-rare] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.damage set value 60
execute if entity @s[predicate=sbstats:holding-rarities/holding-rare] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.speed set value 60

execute if entity @s[predicate=sbstats:holding-rarities/holding-epic] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.damage set value 80
execute if entity @s[predicate=sbstats:holding-rarities/holding-epic] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.speed set value 80

execute if entity @s[predicate=sbstats:holding-rarities/holding-leg] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.damage set value 100
execute if entity @s[predicate=sbstats:holding-rarities/holding-leg] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.speed set value 100

execute if entity @s[predicate=sbstats:holding-rarities/holding-mythic] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.damage set value 120
execute if entity @s[predicate=sbstats:holding-rarities/holding-mythic] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.speed set value 120

execute if entity @s[predicate=sbstats:holding-rarities/holding-divine] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.damage set value 140
execute if entity @s[predicate=sbstats:holding-rarities/holding-divine] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.speed set value 140

function sbstats:stats/get_item_stats
item modify entity @s weapon.mainhand sbstats:reforge_stat
item modify entity @s weapon.mainhand sbstats:reforged
execute as @s run function sbstats:reforges/apply_lore