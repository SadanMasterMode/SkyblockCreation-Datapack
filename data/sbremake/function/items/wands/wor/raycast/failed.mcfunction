#Commands to run when the raycast has failed to detect an entity and/or block.

effect clear @e[tag=wor-hit,tag=!glowing] glowing
tag @e[tag=wor-hit] remove wor-hit
scoreboard players set #wor-hit fakePlayers 0