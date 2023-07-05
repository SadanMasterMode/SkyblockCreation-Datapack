data modify storage sbstats:reforge SelectedItem.tag.Upgrades.reforge.type set value 'Epic'

item modify entity @s weapon.mainhand sbstats:reforge_type

item modify entity @s[predicate=!sbstats:reforged] weapon.mainhand sbstats:old_name
data modify storage sbstats:item_name Name set from entity @s SelectedItem.tag.SBStats.OldName
data modify storage sbstats:reforge Name set from entity @s SelectedItem.tag.Upgrades.reforge.type

# Apply stats

execute if entity @s[predicate=sbstats:holding-rarities/holding-common] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.strength set value 15
execute if entity @s[predicate=sbstats:holding-rarities/holding-common] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_damage set value 10
execute if entity @s[predicate=sbstats:holding-rarities/holding-common] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.attack_speed set value 1

execute if entity @s[predicate=sbstats:holding-rarities/holding-uncommon] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.strength set value 20
execute if entity @s[predicate=sbstats:holding-rarities/holding-uncommon] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_damage set value 15
execute if entity @s[predicate=sbstats:holding-rarities/holding-uncommon] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.attack_speed set value 2

execute if entity @s[predicate=sbstats:holding-rarities/holding-rare] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.strength set value 25
execute if entity @s[predicate=sbstats:holding-rarities/holding-rare] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_damage set value 20
execute if entity @s[predicate=sbstats:holding-rarities/holding-rare] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.attack_speed set value 4

execute if entity @s[predicate=sbstats:holding-rarities/holding-epic] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.strength set value 32
execute if entity @s[predicate=sbstats:holding-rarities/holding-epic] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_damage set value 27
execute if entity @s[predicate=sbstats:holding-rarities/holding-epic] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.attack_speed set value 7

execute if entity @s[predicate=sbstats:holding-rarities/holding-leg] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.strength set value 40
execute if entity @s[predicate=sbstats:holding-rarities/holding-leg] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_damage set value 35
execute if entity @s[predicate=sbstats:holding-rarities/holding-leg] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.attack_speed set value 10

execute if entity @s[predicate=sbstats:holding-rarities/holding-mythic] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.strength set value 50
execute if entity @s[predicate=sbstats:holding-rarities/holding-mythic] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_damage set value 45
execute if entity @s[predicate=sbstats:holding-rarities/holding-mythic] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.attack_speed set value 15

function sbstats:stats/get_item_stats
item modify entity @s weapon.mainhand sbstats:reforge_stat
item modify entity @s weapon.mainhand sbstats:reforged
execute as @s run function sbstats:reforges/apply_lore