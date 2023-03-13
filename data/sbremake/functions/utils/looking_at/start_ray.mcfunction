#Setting up the raycasting data.

tag @s add looking_at
scoreboard players set #hit lookingAt 0
scoreboard players set #distance lookingAt 0

#Activating the raycast. This function will call itself until it is done.

function sbremake:utils/looking_at/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove looking_at