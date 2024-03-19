data modify storage sbstats:data PlayerData set from entity @a[limit=1]
execute unless score #reforge cd matches 2.. run scoreboard players add #reforge cd 1

execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{recomb:1b}}}}} run data modify storage sbstats:recomb Item.tag.Footer set value 'S '
execute unless data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{recomb:1b}}}}} run data remove storage sbstats:recomb Item.tag.Footer

execute as @a[advancements={sbstats:villager=true},predicate=sbstats:holding-item] at @s unless data storage sbstats:data {PlayerData:{SelectedItem:{tag:{SBStats:{pickaxe:1b}}}}} at @e[tag=reforge,limit=1,sort=nearest] positioned ~ ~1 ~ unless entity @e[type=item,nbt={Item:{tag:{Base:{type:'UPGRADE'}}}},distance=..1,limit=1] if score #reforge cd matches 2.. run function sbstats:reforges/right_click

execute as @a[advancements={sbstats:villager=true},predicate=sbstats:no-recomb] at @s at @e[tag=reforge,limit=1,sort=nearest] positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{tag:{Base:{id:'RECOMBOBULATOR_3000'}}}},distance=..0.8,limit=1] unless entity @e[type=item,nbt={Item:{tag:{Base:{type:'UPGRADE'}}}},nbt=!{Item:{tag:{Base:{id:'RECOMBOBULATOR_3000'}}}},distance=..1,limit=1] if score #reforge cd matches 2.. run function sbstats:recomb/main

execute as @a[advancements={sbstats:villager=true}] at @s at @e[tag=reforge,limit=1,sort=nearest] positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{tag:{Base:{type:'UPGRADE'}}}},nbt=!{Item:{tag:{Base:{id:'RECOMBOBULATOR_3000'}}}},distance=..0.8,limit=1] if score #reforge cd matches 2.. run function sbstats:stoners/main

execute as @e[type=item,nbt={Item:{id:"minecraft:armor_stand",tag:{display:{Name:'"sbstats:reforge_anvil"'}}}}] at @s align xyz positioned ~0.5 ~-1 ~0.5 if block ~ ~ ~ #sbstats:reforges/raycast/blocks unless entity @e[tag=reforge,distance=..1,limit=1] run function sbstats:reforge_anvil

# Change reforge CD by changing the value above (#reforge cd)
advancement revoke @a[advancements={sbstats:villager=true}] only sbstats:villager