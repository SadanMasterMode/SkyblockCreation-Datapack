data modify storage sbstats:item_name Name set from storage sbstats:data PlayerData.SelectedItem.tag.SBStats.OldName
data modify storage sbstats:reforge Name set from storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.type

item modify entity @s weapon.mainhand sbstats:custom_stone

execute if entity @s[predicate=sbstats:holding-rarities/holding-common] run data modify storage sbstats:stone Item.tag.NewStats set from entity @s SelectedItem.tag.BonusReforge.stats.common
execute if entity @s[predicate=sbstats:holding-rarities/holding-uncommon] run data modify storage sbstats:stone Item.tag.NewStats set from entity @s SelectedItem.tag.BonusReforge.stats.uncommon
execute if entity @s[predicate=sbstats:holding-rarities/holding-rare] run data modify storage sbstats:stone Item.tag.NewStats set from entity @s SelectedItem.tag.BonusReforge.stats.rare
execute if entity @s[predicate=sbstats:holding-rarities/holding-epic] run data modify storage sbstats:stone Item.tag.NewStats set from entity @s SelectedItem.tag.BonusReforge.stats.epic
execute if entity @s[predicate=sbstats:holding-rarities/holding-leg] run data modify storage sbstats:stone Item.tag.NewStats set from entity @s SelectedItem.tag.BonusReforge.stats.legendary
execute if entity @s[predicate=sbstats:holding-rarities/holding-mythic] run data modify storage sbstats:stone Item.tag.NewStats set from entity @s SelectedItem.tag.BonusReforge.stats.mythic
execute if entity @s[predicate=sbstats:holding-rarities/holding-divine] run data modify storage sbstats:stone Item.tag.NewStats set from entity @s SelectedItem.tag.BonusReforge.stats.divine

data modify storage sbstats:reforge SelectedItem.tag.Upgrades.reforge.type set from storage sbstats:data PlayerData.SelectedItem.tag.BonusReforge.id
item modify entity @s weapon.mainhand sbstats:stoner
item modify entity @s weapon.mainhand sbstats:reforge_type
item modify entity @s weapon.mainhand sbstats:reforged

function sbstats:reforges/apply_lore