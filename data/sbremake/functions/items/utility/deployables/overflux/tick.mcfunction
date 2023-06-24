execute as f9bfe799-3c1d-484c-9ed4-28333bc49fda run scoreboard players remove @s[scores={life=1..}] life 1

scoreboard players add #overflux-orb-bob fakePlayers 1
execute if score #overflux-orb-bob fakePlayers matches 80.. run scoreboard players reset #overflux-orb-bob fakePlayers

execute as @a[predicate=sbremake:items/utility/deployables/overflux/holding] at @s unless entity 23659f9b-55c6-4089-908e-1cc6a38c3584 run summon area_effect_cloud ~ ~-1 ~ {Radius:0,Duration:2147483647,NoGravity:1b,Passengers:[{id:"minecraft:interaction",NoGravity:1b,Tags:["left-click","spectator"],height:5,width:5,response:1b}],Tags:["left-click","spectator"],UUID:[I;593862555,1439056009,-1869734714,-1551092348]}
# 23659f9b-55c6-4089-908e-1cc6a38c3584

execute as f9bfe799-3c1d-484c-9ed4-28333bc49fda if score @s life matches 0 run function sbremake:items/utility/deployables/overflux/final

execute store result score #overflux-life fakePlayers run scoreboard players get f9bfe799-3c1d-484c-9ed4-28333bc49fda life
scoreboard players operation #overflux-life fakePlayers /= #20 const
data modify block 3000000 1 3000000 Text1 set value '[{"text":"Overflux ","color":"dark_purple"},{"score":{"objective":"fakePlayers","name": "#overflux-life"},"color":"yellow"},{"text":"s","color":"yellow"}]'
data modify entity f9bfe799-3c1d-484c-9ed4-28333bc49fda CustomName set from block 3000000 1 3000000 Text1

execute as 2122e1df-9d93-496e-8826-edae54fbead6 at @s run function sbremake:items/utility/deployables/overflux/as-stand

execute at 2122e1df-9d93-496e-8826-edae54fbead6 as @a[distance=..18] run tag @s add near-overflux
execute as @a[tag=near-overflux,predicate=!sbremake:items/utility/deployables/overflux/regen-3] run effect give @s regeneration infinite 2 true

execute at 2122e1df-9d93-496e-8826-edae54fbead6 as @a[distance=18..,predicate=sbremake:items/utility/deployables/overflux/regen-3,tag=!regen] run effect clear @s regeneration
execute at 2122e1df-9d93-496e-8826-edae54fbead6 as @a[distance=18..,tag=near-overflux] run tag @s remove near-overflux