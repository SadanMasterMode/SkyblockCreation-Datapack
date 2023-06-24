scoreboard players add @a[scores={ffsCD=..199}] ffsCD 1

execute as @e[tag=ffsMark] at @s run function sbremake:items/mage/ffs/frozen
execute as @e[tag=ffsHeads] at @s run function sbremake:items/mage/ffs/as-heads
execute as fa035499-4db9-4efc-8714-fabe5cac9fdf at @s run function sbremake:items/mage/ffs/as-main

execute as @a[predicate=sbremake:items/mage/ffs/cd] run tellraw @a {"text":"This item is on cooldown!","color":"red"}
execute as @a[predicate=sbremake:items/mage/ffs/mana] run tellraw @a {"text":"You don't have enough mana to use this ability!","color":"red"}
execute as @a[predicate=sbremake:items/mage/ffs/main] at @s run function sbremake:items/mage/ffs/main