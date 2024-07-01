execute as @a[predicate=sbremake:items/mage/bonzo/mana] run tellraw @s {"text":"You don't have enough mana to use this ability!","color":"red"}
execute as @a[predicate=sbremake:items/mage/bonzo/main] at @s anchored eyes positioned ^ ^-0.5 ^ run function sbremake:items/mage/bonzo/main

execute as @e[type=area_effect_cloud,tag=bonzo-balloon] at @s run function sbremake:items/mage/bonzo/as-aec