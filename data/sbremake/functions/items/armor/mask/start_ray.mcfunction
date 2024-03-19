#Setting up the raycasting data.

tag @s add vdvray
scoreboard players set #hit vdvcasttemp 0
scoreboard players set #distance vdvcasttemp 0

#Activating the raycast. This function will call itself until it is done.

function sbremake:items/armor/mask/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove vdvray