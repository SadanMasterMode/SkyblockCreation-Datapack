#Mark the ray as having found a block.

scoreboard players set #hit vdvcasttemp 1

#Running custom commands since the block was found.

execute if entity @e[type=interaction,tag=reforge,distance=..1,limit=1] run tag @s add lookingAtReforge