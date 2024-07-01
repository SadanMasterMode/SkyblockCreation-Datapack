#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #sbremake:items/air run function sbremake:items/aote/hit_block
scoreboard players add #distance aoteTemp 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit aoteTemp matches 0 if score #distance aoteTemp matches 1201.. run function sbremake:items/aote/failed

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit aoteTemp matches 0 if score #distance aoteTemp matches ..1200 positioned ^ ^ ^0.01 run function sbremake:items/aote/ray