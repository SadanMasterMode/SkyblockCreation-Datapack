execute as @a[predicate=sbremake:items/aote/mana] run function sbremake:items/aote/mana
execute as @a[predicate=sbremake:items/aote/main] run function sbremake:items/aote/main

execute if entity @e[tag=aote1,limit=1] run function sbremake:items/aote/final
scoreboard players reset @a aoteRC