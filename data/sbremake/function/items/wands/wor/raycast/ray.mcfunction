#Check if an entity was detected.

execute if score #hit vdvcasttemp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!wor-ray,dx=0,sort=nearest,tag=!spectator,type=!#sbremake:never-detect] run function sbremake:items/wands/wor/raycast/check_hit_entity

#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #sbremake:items/air run function sbremake:items/wands/wor/raycast/hit_block
scoreboard players add #distance vdvcasttemp 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches 241.. run function sbremake:items/wands/wor/raycast/failed

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..240 positioned ^ ^ ^0.25 run function sbremake:items/wands/wor/raycast/ray