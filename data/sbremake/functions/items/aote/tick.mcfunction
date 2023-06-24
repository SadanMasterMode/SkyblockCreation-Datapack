execute as @a[predicate=sbremake:items/aote/mana] run tellraw @a {"text":"You don't have enough mana to use this ability!","color":"red"}
execute as @a[predicate=sbremake:items/aote/main] run function sbremake:items/aote/main

execute if entity 8f1071f6-966b-424d-a35f-f24fb8ee568d run function sbremake:items/aote/final
scoreboard players reset @a aoteRC