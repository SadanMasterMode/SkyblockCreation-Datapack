execute as e42a9d23-f22d-4393-bb01-6676a5140841 run scoreboard players remove @s[scores={life=1..}] life 1

scoreboard players add #manaflux-orb-bob fakePlayers 1
execute if score #manaflux-orb-bob fakePlayers matches 80.. run scoreboard players reset #manaflux-orb-bob fakePlayers

execute as @a[predicate=sbremake:items/utility/deployables/manaflux/holding] at @s unless entity 23659f9b-55c6-4089-908e-1cc6a38c3584 run summon area_effect_cloud ~ ~-1 ~ {Radius:0,Duration:2147483647,NoGravity:1b,Passengers:[{id:"minecraft:interaction",NoGravity:1b,Tags:["left-click","spectator"],height:5,width:5,response:1b}],Tags:["left-click","spectator"],UUID:[I;593862555,1439056009,-1869734714,-1551092348]}
# 23659f9b-55c6-4089-908e-1cc6a38c3584

execute as e42a9d23-f22d-4393-bb01-6676a5140841 if score @s life matches 0 run function sbremake:items/utility/deployables/manaflux/final

execute store result score #manaflux-life fakePlayers run scoreboard players get e42a9d23-f22d-4393-bb01-6676a5140841 life
scoreboard players operation #manaflux-life fakePlayers /= #20 const
data modify block 3000000 1 3000000 Text1 set value '[{"text":"Mana Flux ","color":"blue"},{"score":{"objective":"fakePlayers","name": "#manaflux-life"},"color":"yellow"},{"text":"s","color":"yellow"}]'
data modify entity e42a9d23-f22d-4393-bb01-6676a5140841 CustomName set from block 3000000 1 3000000 Text1

execute as cf4104c7-f284-42d1-9c58-9b105a8d158b at @s run function sbremake:items/utility/deployables/manaflux/as-stand

execute at cf4104c7-f284-42d1-9c58-9b105a8d158b as @a[distance=..18] run tag @s add near-manaflux
execute as @a[tag=near-manaflux,predicate=!sbremake:items/utility/deployables/manaflux/regen-2,tag=!near-overflux] run effect give @s regeneration infinite 1 true
execute as @a[tag=near-manaflux] if score @s mana < @s maxMana run scoreboard players add @s mana 1

execute at cf4104c7-f284-42d1-9c58-9b105a8d158b as @a[distance=18..,predicate=sbremake:items/utility/deployables/manaflux/regen-2,tag=!regen] run effect clear @s regeneration
execute at cf4104c7-f284-42d1-9c58-9b105a8d158b as @a[distance=18..,tag=near-manaflux] run tag @s remove near-manaflux
execute as @a[tag=near-overflux,predicate=sbremake:items/utility/deployables/manaflux/regen-2] run effect clear @s regeneration