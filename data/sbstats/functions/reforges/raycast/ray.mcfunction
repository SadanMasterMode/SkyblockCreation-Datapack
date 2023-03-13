#Run a function if a block was successfully detected.

execute if block ~ ~ ~ #sbstats:reforges/raycast/blocks positioned ~ ~-1 ~ run function sbstats:reforges/raycast/hit_block
scoreboard players add #distance vdvcasttemp 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches 601.. run function sbstats:reforges/raycast/failed

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..600 positioned ^ ^ ^0.01 run function sbstats:reforges/raycast/ray