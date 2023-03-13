#Mark the ray has having found an entity.

scoreboard players set #hit lookingAt 1

#Running custom commands since the entity was found.

execute as @s run effect give @s glowing 1 0 true
tag @s add lookingAtHit