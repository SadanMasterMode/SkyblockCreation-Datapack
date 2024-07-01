tag @s add recomb
execute at @s run playsound block.anvil.use master @s ~ ~ ~

data remove storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats
data remove storage sbstats:reforge Name
data remove storage sbstats:reforge SelectedItem.components."minecraft:custom_data".Upgrades.reforge.type

execute if entity @s[predicate=sbstats:holding-rarities/holding-common] run function sbstats:recomb/common
execute if entity @s[predicate=sbstats:holding-rarities/holding-uncommon] run function sbstats:recomb/uncommon
execute if entity @s[predicate=sbstats:holding-rarities/holding-rare] run function sbstats:recomb/rare
execute if entity @s[predicate=sbstats:holding-rarities/holding-epic] run function sbstats:recomb/epic
execute if entity @s[predicate=sbstats:holding-rarities/holding-leg] run function sbstats:recomb/legendary
execute if entity @s[predicate=sbstats:holding-rarities/holding-mythic] run function sbstats:recomb/mythic

item modify entity @s weapon.mainhand sbstats:recomb
item modify entity @s weapon.mainhand sbstats:recombed

data modify storage sbstats:recomb Item.components."minecraft:custom_data".Footer set value 'S '

data remove storage sbstats:data oldnametmp.oldname
data modify storage sbstats:data oldnametmp.oldname set from entity @s SelectedItem.components."minecraft:custom_name"
execute if entity @s[predicate=!sbstats:reforged] run function sbstats:macros/old_name with storage sbstats:data oldnametmp

data modify storage sbstats:item_name Name set from storage sbstats:data PlayerData.SelectedItem.components."minecraft:custom_data".SBStats.OldName
data modify storage sbstats:reforge Name set from storage sbstats:data PlayerData.SelectedItem.components."minecraft:custom_data".Upgrades.reforge.type

function sbstats:recomb/redo
execute at @s at @e[tag=reforge,limit=1,sort=nearest] positioned ~ ~1 ~ as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{Base:{id:'RECOMBOBULATOR_3000'}}}}},limit=1] run function sbstats:stats/remove_item
tag @s remove recomb