#Mark the ray as having found a block.

scoreboard players set #hit vdvcasttemp 1

effect clear @e[tag=wor-hit,tag=!glowing] glowing
tag @e[tag=wor-hit] remove wor-hit
scoreboard players set #wor-hit fakePlayers 0