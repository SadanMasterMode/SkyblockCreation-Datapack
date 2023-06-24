scoreboard players add @a[scores={furyCD=..239}] furyCD 1

execute as @a[predicate=sbremake:items/mage/fury/cd] run tellraw @s {"text":"This item is on cooldown!","color":"red"}
execute as @a[predicate=sbremake:items/mage/fury/mana] run tellraw @a {"text":"You don't have enough mana to use this ability!","color":"red"}
execute as @a[predicate=sbremake:items/mage/fury/main] run function sbremake:items/mage/fury/main

execute as 34177f8b-193d-4de7-b82b-99f489642c30 at @s run function sbremake:items/mage/fury/as-main
execute as 90b8d561-8157-464e-9d1c-c1849d65a4fe at @s run function sbremake:items/mage/fury/as-marker

execute as @e[tag=furyMarked] run data merge entity @s {HasVisualFire:1b}