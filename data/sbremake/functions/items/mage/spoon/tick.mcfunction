scoreboard players add @a moltenCD 1
execute as @e[scores={moltenHT=1..}] run scoreboard players remove @s moltenHT 1

execute as @a[predicate=sbremake:items/spoon/mana] run function sbremake:items/mage/spoon/mana
execute as @a[predicate=sbremake:items/spoon/main] at @s unless entity a6ae9cfe-01ee-4cc2-8752-f481b8babe7a run function sbremake:items/mage/spoon/main

execute as @e[tag=molten] at @s run function sbremake:tick/simulate_gravity

execute at a6ae9cfe-01ee-4cc2-8752-f481b8babe7a positioned ~ ~1 ~ as @e[distance=..3,tag=!spectator,type=!#sbremake:never-detect] at @s unless score @s moltenHT matches 1.. run function sbremake:items/mage/spoon/dmg