execute as @a[predicate=sbremake:items/mage/witherlord/mana] run tellraw @a {"text":"You don't have enough mana to use this ability!","color":"red"}
execute as @a[predicate=sbremake:items/mage/witherlord/main] at @s anchored eyes run function sbremake:items/mage/witherlord/main
execute as @e[tag=witherlord,type=!item_display] at @s run function sbremake:items/mage/witherlord/as-heads