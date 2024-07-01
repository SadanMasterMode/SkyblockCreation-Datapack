#Setting up the raycasting data.

tag @s add aoteRay
scoreboard players set #hit aoteTemp 0
scoreboard players set #distance aoteTemp 0

#Activating the raycast. This function will call itself until it is done.

function sbremake:items/aote/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove aoteRay