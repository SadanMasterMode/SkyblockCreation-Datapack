# Wither Cloak
execute as @a[predicate=sbremake:items/cloak/attack] run function sbremake:items/cloak/mana
execute as @a[predicate=sbremake:items/cloak/death] run function sbremake:items/cloak/final
execute as @a[predicate=sbremake:items/cloak/mana] run function sbremake:items/cloak/manawarn
execute as @a[predicate=sbremake:items/cloak/final] at @s run function sbremake:items/cloak/final
execute as @a[predicate=sbremake:items/cloak/main] at @s run function sbremake:items/cloak/main

execute at @a run tp @e[tag=cloak-1] ~2 ~ ~1
execute at @a run tp @e[tag=cloak-2] ~2 ~ ~-1
execute at @a run tp @e[tag=cloak-3] ~ ~ ~2
execute at @a run tp @e[tag=cloak-4] ~ ~ ~-2
execute at @a run tp @e[tag=cloak-5] ~-2 ~ ~1
execute at @a run tp @e[tag=cloak-6] ~-2 ~ ~-1