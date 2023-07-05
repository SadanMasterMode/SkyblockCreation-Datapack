scoreboard players add #manaflux-orb-bob fakePlayers 1
execute if score #manaflux-orb-bob fakePlayers matches 80.. run scoreboard players reset #manaflux-orb-bob fakePlayers

execute as @a[predicate=sbremake:items/utility/deployables/manaflux/holding] at @s unless entity 23659f9b-55c6-4089-908e-1cc6a38c3584 run summon area_effect_cloud ~ ~-1 ~ {Radius:0,Duration:2147483647,NoGravity:1b,Passengers:[{id:"minecraft:interaction",NoGravity:1b,Tags:["left-click","spectator"],height:5,width:5,response:1b}],Tags:["left-click","spectator"],UUID:[I;593862555,1439056009,-1869734714,-1551092348]}
# 23659f9b-55c6-4089-908e-1cc6a38c3584

execute as e42a9d23-f22d-4393-bb01-6676a5140841 if score @s life matches 0 run function sbremake:items/utility/deployables/manaflux/final

execute as cf4104c7-f284-42d1-9c58-9b105a8d158b at @s run function sbremake:items/utility/deployables/manaflux/as-stand

execute at cf4104c7-f284-42d1-9c58-9b105a8d158b as @a[distance=..18] run tag @s add near-manaflux
execute as @a[tag=near-manaflux,predicate=!sbremake:items/utility/deployables/manaflux/regen-2,tag=!near-overflux] run effect give @s regeneration 2 1 true

execute at cf4104c7-f284-42d1-9c58-9b105a8d158b as @a[distance=18..,tag=near-manaflux] run tag @s remove near-manaflux