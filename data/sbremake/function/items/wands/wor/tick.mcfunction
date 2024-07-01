effect clear @e[tag=wor-hit] glowing
tag @e[tag=wor-hit] remove wor-hit
scoreboard players set #wor-hit fakePlayers 0

execute as @a[predicate=sbremake:items/wands/wor/holding] at @s anchored eyes positioned ^ ^ ^ anchored feet run function sbremake:items/wands/wor/raycast/start_ray
execute as @a[predicate=sbremake:items/wands/wor/main] at @s if score #wor-hit fakePlayers matches 1 run function sbremake:items/wands/wor/main