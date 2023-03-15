scoreboard players add @a moltenCD 1
execute as @e[scores={moltenHT=1..}] run scoreboard players remove @s moltenHT 1
execute as @e[tag=molten] run scoreboard players add @s moltenLife 1
kill @e[scores={moltenLife=60..}]

execute as @a[predicate=sbremake:items/spoon/mana] run function sbremake:items/mage/spoon/mana
execute as @a[predicate=sbremake:items/spoon/main] run function sbremake:items/mage/spoon/main

execute as @e[tag=molten] at @s run function sbremake:tick/simulate_gravity

scoreboard players reset @a moltenRC
execute at @e[tag=moltenGuide] positioned ~ ~1 ~ as @e[distance=..3,tag=!spectator] unless score @s moltenHT matches 1.. run function sbremake:items/mage/spoon/dmg