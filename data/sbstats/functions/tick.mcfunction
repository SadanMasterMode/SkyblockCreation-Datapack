execute unless score #reforge cd matches 100.. run scoreboard players add #reforge cd 1

execute as @a[nbt={SelectedItem:{tag:{Upgrades:{recomb:1b}}}}] run data modify storage sbstats:recomb Item.tag.Footer1 set value 'S '
execute as @a[nbt={SelectedItem:{tag:{Upgrades:{recomb:1b}}}}] run data modify storage sbstats:recomb Item.tag.Footer2 set value ' S'
execute as @a[nbt=!{SelectedItem:{tag:{Upgrades:{recomb:1b}}}}] run data remove storage sbstats:recomb Item.tag.Footer1
execute as @a[nbt=!{SelectedItem:{tag:{Upgrades:{recomb:1b}}}}] run data remove storage sbstats:recomb Item.tag.Footer2

function sbstats:pickaxe
execute as @a[nbt=!{SelectedItem:{tag:{sbstats:{pickaxe:1b}}}}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function sbstats:reforges/raycast/start_ray

execute as @a[nbt={SelectedItem:{tag:{sbstats:{pickaxe:1b}}}}] at @s run tp @e[tag=reforgeBlock,limit=2,sort=nearest] ~ ~-100 ~
execute as @a[nbt={SelectedItem:{tag:{sbstats:{pickaxe:1b}}}}] at @s run kill @e[tag=reforgeBlock,limit=2,sort=nearest]

execute as @p at @s run tp @e[tag=reforgeBlock,type=area_effect_cloud] ~ ~ ~
execute as @e[type=area_effect_cloud] store result entity @s Air short 1 run time query gametime

execute as @a[advancements={sbstats:villager=true},nbt={SelectedItem:{tag:{Base:{stats:{}}}}}] at @s at @e[tag=reforge,limit=1,sort=nearest] positioned ~ ~1 ~ unless entity @e[type=item,nbt={Item:{tag:{Base:{type:'UPGRADE'}}}},distance=..0.8,limit=1] if score #reforge cd matches 2.. run function sbstats:reforges/right_click

execute as @a[advancements={sbstats:villager=true},nbt={SelectedItem:{tag:{Upgrades:{recomb:0b}}}}] at @s at @e[tag=reforge,limit=1,sort=nearest] positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{tag:{Base:{id:'RECOMBOBULATOR_3000'}}}},distance=..0.8,limit=1] unless entity @e[type=item,nbt={Item:{tag:{Base:{type:'UPGRADE'}}}},nbt=!{Item:{tag:{Base:{id:'RECOMBOBULATOR_3000'}}}},distance=..0.8,limit=1] if score #reforge cd matches 2.. run function sbstats:recomb/main

execute as @a[advancements={sbstats:villager=true}] at @s at @e[tag=reforge,limit=1,sort=nearest] positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{tag:{Base:{type:'UPGRADE'}}}},nbt=!{Item:{tag:{Base:{id:'RECOMBOBULATOR_3000'}}}},distance=..0.8,limit=1] if score #reforge cd matches 2.. run function sbstats:stoners/main

execute as @e[type=item,nbt={Item:{id:"minecraft:armor_stand",tag:{display:{Name:'{"text":"sbstats:reforge_anvil"}'}}}}] at @s align xyz positioned ~0.5 ~-1 ~0.5 if block ~ ~ ~ #sbstats:reforges/raycast/blocks unless entity @e[tag=reforge,distance=..1,limit=1] run function sbstats:reforge_anvil
execute as @e[type=armor_stand,tag=reforge] at @s unless block ~ ~ ~ #sbstats:reforges/raycast/blocks run particle cloud ~ ~1 ~ 0 0 0 0.05 20 normal
execute as @e[type=armor_stand,tag=reforge] at @s unless block ~ ~ ~ #sbstats:reforges/raycast/blocks run kill @s

team join player @e[tag=reforgeBlock]

# Change reforge CD by changing the value above (#reforge cd)
advancement revoke @a only sbstats:villager