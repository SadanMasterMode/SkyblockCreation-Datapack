#Setting up the raycasting data.

tag @s add wimpactRay
scoreboard players set #hit wimpactTemp 0
scoreboard players set #distance wimpactTemp 0

#Activating the raycast. This function will call itself until it is done.

function sbremake:items/mage/wimpact/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove wimpactRay