#Mark the ray as having found a block.

scoreboard players set #hit vdvcasttemp 1

#Running custom commands since the block was found.

execute if entity @e[tag=reforge,distance=..1] at @s unless entity @e[tag=reforgeBlock] run summon area_effect_cloud ~ ~-10 ~ {Duration:2147483647,Radius:0,NoGravity:1b,Invulnerable:1b,Tags:["reforgeBlock","spectator"],Passengers:[{id:"minecraft:villager",Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["reforgeBlock","spectator"],Team:player,ActiveEffects:[{Id:14,Duration:10000000,Amplifier:1,ShowParticles:0b},{Id:11,Duration:10000000,Amplifier:5,ShowParticles:0b}]}]}