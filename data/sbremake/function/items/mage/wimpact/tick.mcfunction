scoreboard players add @a[scores={Wimpact=..99}] Wimpact 1

execute as @a[predicate=sbremake:items/wimpact/mana] run tellraw @a {"text":"You don't have enough mana to use this ability!","color":"red"}
execute as @a[predicate=sbremake:items/wimpact/main] at @s run function sbremake:items/mage/wimpact/main

execute if entity 00ed0fa0-6ab8-49ed-ad8f-e1edf22cba5d as @a at @s run function sbremake:items/mage/wimpact/final