summon minecraft:creeper ~2 ~ ~1 {powered:1,ExplosionRadius:0,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:10000000,Amplifier:1,ShowParticles:0b}],Tags:["cloak-1","spectator","wither-cloak"]}
summon minecraft:creeper ~2 ~ ~-1 {powered:1,ExplosionRadius:0,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:10000000,Amplifier:1,ShowParticles:0b}],Tags:["cloak-2","spectator","wither-cloak"]}
summon minecraft:creeper ~ ~ ~2 {powered:1,ExplosionRadius:0,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:10000000,Amplifier:1,ShowParticles:0b}],Tags:["cloak-3","spectator","wither-cloak"]}
summon minecraft:creeper ~ ~ ~-2 {powered:1,ExplosionRadius:0,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:10000000,Amplifier:1,ShowParticles:0b}],Tags:["cloak-4","spectator","wither-cloak"]}
summon minecraft:creeper ~-2 ~ ~1 {powered:1,ExplosionRadius:0,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:10000000,Amplifier:1,ShowParticles:0b}],Tags:["cloak-5","spectator","wither-cloak"]}
summon minecraft:creeper ~-2 ~ ~-1 {powered:1,ExplosionRadius:0,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:10000000,Amplifier:1,ShowParticles:0b}],Tags:["cloak-6","spectator","wither-cloak"]}

attribute @s minecraft:generic.knockback_resistance base set 1000
effect give @s minecraft:resistance 1000000 4 true
effect give @s minecraft:weakness 1000000 100 true
tellraw @s ["",{"text":"Creeper Veil","color":"light_purple"},{"text":" Activated!","color":"green"}]

tag @s add inWitherCloak
scoreboard players reset @s rightClick

function sbremake:items/cloak/sound