scoreboard players add @a Wimpact 1

execute as @a[predicate=sbremake:items/wimpact/mana] run function sbremake:items/mage/wimpact/mana
execute as @a[predicate=sbremake:items/wimpact/main] run function sbremake:items/mage/wimpact/main

execute if entity @e[tag=wimpact1] as @a at @s run function sbremake:items/mage/wimpact/final
scoreboard players reset @a rightClick