#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #sbremake:items/air run function sbremake:items/berserk/hydra/raycast/hit_block
scoreboard players add #distance hydraDistance 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit hydraDistance matches 0 if score #distance hydraDistance matches 121.. run function sbremake:items/berserk/hydra/raycast/failed

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit hydraDistance matches 0 if score #distance hydraDistance matches ..120 positioned ^ ^ ^0.05 run function sbremake:items/berserk/hydra/raycast/ray