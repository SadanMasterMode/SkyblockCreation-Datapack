#Mark the ray has having found an entity.

scoreboard players set #hit vdvcasttemp 1

#Running custom commands since the entity was found.

effect give @s glowing 1 0 true
tag @s add wor-hit
team join red @s
scoreboard players set #wor-hit fakePlayers 1