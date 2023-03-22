tag @s add recomb
execute at @s run playsound block.anvil.use master @s ~ ~ ~

data remove storage sbstats:reforge Item.tag.Upgrades.reforge.stats
data remove storage sbstats:reforge Name
data remove storage sbstats:reforge SelectedItem.tag.Upgrades.reforge.type

execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'COMMON'}}}}] run function sbstats:recomb/common
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'UNCOMMON'}}}}] run function sbstats:recomb/uncommon
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'RARE'}}}}] run function sbstats:recomb/rare
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'EPIC'}}}}] run function sbstats:recomb/epic
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'LEGENDARY'}}}}] run function sbstats:recomb/legendary
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'MYTHIC'}}}}] run function sbstats:recomb/mythic

item modify entity @s weapon.mainhand sbstats:recomb
item modify entity @s weapon.mainhand sbstats:recombed

data modify storage sbstats:recomb Item.tag.Footer set value 'S '

item modify entity @s[nbt=!{SelectedItem:{tag:{Upgrades:{reforged:1b}}}}] weapon.mainhand sbstats:old_name
data modify storage sbstats:item_name Name set from storage sbstats:data PlayerData.SelectedItem.tag.SBStats.OldName
data modify storage sbstats:reforge Name set from storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.type

function sbstats:recomb/redo
execute at @p at @e[tag=reforge,limit=1,sort=nearest] positioned ~ ~1 ~ as @e[type=item,nbt={Item:{tag:{Base:{id:'RECOMBOBULATOR_3000'}}}},limit=1] run function sbstats:stats/remove_item
tag @s remove recomb