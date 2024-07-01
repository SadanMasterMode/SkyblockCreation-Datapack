#Run a function if a block was successfully detected.

execute if block ~ ~ ~ #sbstats:reforges/raycast/blocks run function sbremake:items/armor/mask/hit_block
scoreboard players add #distance vdvcasttemp 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches 51.. run function sbremake:items/armor/mask/failed

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..50 positioned ^ ^ ^0.1 run function sbremake:items/armor/mask/ray