#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #sbremake:items/air run function sbremake:items/mage/wimpact/hit_block
scoreboard players add #distance wimpactTemp 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit wimpactTemp matches 0 if score #distance wimpactTemp matches 1001.. run function sbremake:items/mage/wimpact/failed

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit wimpactTemp matches 0 if score #distance wimpactTemp matches ..1000 positioned ^ ^ ^0.01 run function sbremake:items/mage/wimpact/ray