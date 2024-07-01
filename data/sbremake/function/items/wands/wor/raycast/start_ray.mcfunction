#Setting up the raycasting data.

tag @s add wor-ray
scoreboard players set #hit vdvcasttemp 0
scoreboard players set #distance vdvcasttemp 0

#Activating the raycast. This function will call itself until it is done.

function sbremake:items/wands/wor/raycast/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove wor-ray