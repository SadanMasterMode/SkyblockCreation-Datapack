execute as @a[predicate=sbremake:items/mage/frozen-scythe/mana] run tellraw @a {"text":"You don't have enough mana to use this ability!","color":"red"}
execute as @a[predicate=sbremake:items/mage/frozen-scythe/main] at @s run function sbremake:items/mage/frozen-scythe/main

execute as @e[type=area_effect_cloud,tag=frozen-scythe-bolt] at @s run function sbremake:items/mage/frozen-scythe/as-aec