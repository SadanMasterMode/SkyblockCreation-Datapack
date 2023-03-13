#Check if an entity was detected.

execute if score #hit lookingAt matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!looking_at,tag=!spectator,dx=0,sort=nearest] run function sbremake:utils/looking_at/check_hit_entity

#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #sbremake:utils/looking_at/blocks run function sbremake:utils/looking_at/hit_block
scoreboard players add #distance lookingAt 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit lookingAt matches 0 if score #distance lookingAt matches ..600 positioned ^ ^ ^0.1 run function sbremake:utils/looking_at/ray