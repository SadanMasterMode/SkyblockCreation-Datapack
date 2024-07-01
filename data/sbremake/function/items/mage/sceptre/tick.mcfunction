execute as @a[predicate=sbremake:items/mage/sceptre/mana] run tellraw @a {"text":"You don't have enough mana to use this ability!","color":"red"}
execute as @a[predicate=sbremake:items/mage/sceptre/main] at @s run function sbremake:items/mage/sceptre/main

execute as @e[tag=sceptre] at @s unless block ~ ~ ~ air run function sbremake:items/mage/sceptre/death
execute as @e[tag=sceptre] at @s run tp @s ^ ^ ^1 facing entity 8b972846-ccec-4466-b60a-ff68a0bcecc6