#Setting up the raycasting data.

tag @s add hydraRay
scoreboard players set #hit hydraDistance 0
scoreboard players set #distance hydraDistance 0

#Activating the raycast. This function will call itself until it is done.

function sbremake:items/berserk/hydra/raycast/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove hydraRay