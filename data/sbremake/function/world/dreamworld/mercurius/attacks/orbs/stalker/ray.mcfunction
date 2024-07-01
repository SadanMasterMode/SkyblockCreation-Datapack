#Check if an entity was detected.

execute if score #hit vdvcasttemp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=magma_cube,tag=stalkerEyeMarker,tag=!vdvray,dx=0,sort=nearest] run function sbremake:world/dreamworld/mercurius/attacks/orbs/stalker/check_hit_entity
scoreboard players add #distance vdvcasttemp 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches 80.. run function sbremake:world/dreamworld/mercurius/attacks/orbs/stalker/failed

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..80 positioned ^ ^ ^0.125 run function sbremake:world/dreamworld/mercurius/attacks/orbs/stalker/ray