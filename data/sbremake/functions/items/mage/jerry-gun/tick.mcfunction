execute as @a[predicate=sbremake:items/mage/jerry-gun/mana] run tellraw @s {"text":"You don't have enough mana to use this ability!","color":"red"}
execute as @a[predicate=sbremake:items/mage/jerry-gun/main] at @s anchored eyes positioned ^ ^-0.5 ^ run function sbremake:items/mage/jerry-gun/main

execute as @e[type=area_effect_cloud,tag=jerry-gun] at @s run function sbremake:items/mage/jerry-gun/as-aec