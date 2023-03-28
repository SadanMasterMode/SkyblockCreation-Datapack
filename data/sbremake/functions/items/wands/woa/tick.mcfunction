execute at @a run tp d25888b5-9055-47a5-92a8-bd8d2b6b2a00 ~ ~ ~
execute store result entity d25888b5-9055-47a5-92a8-bd8d2b6b2a00 Air short 1 run time query gametime

execute as @a[predicate=sbremake:items/wands/woa/holding] at @s unless entity d25888b5-9055-47a5-92a8-bd8d2b6b2a00 run function sbremake:items/wands/woa/summon
execute as @a[predicate=!sbremake:items/wands/woa/holding] run kill @e[tag=woa]

execute if score @a[limit=1] gamemodeType matches 3 run kill d25888b5-9055-47a5-92a8-bd8d2b6b2a00