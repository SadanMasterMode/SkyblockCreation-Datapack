
scoreboard players add #overflux-orb-bob fakePlayers 1
execute if score #overflux-orb-bob fakePlayers matches 80.. run scoreboard players reset #overflux-orb-bob fakePlayers

execute as @a[predicate=sbremake:items/utility/deployables/overflux/holding] at @s unless entity 23659f9b-55c6-4089-908e-1cc6a38c3584 run summon area_effect_cloud ~ ~-1 ~ {Radius:0,Duration:2147483647,NoGravity:1b,Passengers:[{id:"minecraft:interaction",NoGravity:1b,Tags:["left-click","spectator"],height:5,width:5,response:1b}],Tags:["left-click","spectator"],UUID:[I;593862555,1439056009,-1869734714,-1551092348]}
# 23659f9b-55c6-4089-908e-1cc6a38c3584

execute as f9bfe799-3c1d-484c-9ed4-28333bc49fda if score @s life matches 0 run function sbremake:items/utility/deployables/overflux/final

execute as 2122e1df-9d93-496e-8826-edae54fbead6 at @s run function sbremake:items/utility/deployables/overflux/as-stand

execute at 2122e1df-9d93-496e-8826-edae54fbead6 as @a[distance=..18] run tag @s add near-overflux
execute as @a[tag=near-overflux,predicate=!sbremake:items/utility/deployables/overflux/regen-3] run effect give @s regeneration 1 2 true

execute at 2122e1df-9d93-496e-8826-edae54fbead6 as @a[distance=18..,tag=near-overflux] run tag @s remove near-overflux