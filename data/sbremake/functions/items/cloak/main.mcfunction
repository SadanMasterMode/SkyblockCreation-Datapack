execute as @a[scores={cloakRC=1}] at @s run summon minecraft:creeper ~2 ~ ~1 {powered:1,ExplosionRadius:0,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:10000000,Amplifier:1,ShowParticles:0b}],Tags:["cloak1","spectator"]}
execute as @a[scores={cloakRC=1}] at @s run summon minecraft:creeper ~2 ~ ~-1 {powered:1,ExplosionRadius:0,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:10000000,Amplifier:1,ShowParticles:0b}],Tags:["cloak2","spectator"]}
execute as @a[scores={cloakRC=1}] at @s run summon minecraft:creeper ~ ~ ~2 {powered:1,ExplosionRadius:0,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:10000000,Amplifier:1,ShowParticles:0b}],Tags:["cloak3","spectator"]}
execute as @a[scores={cloakRC=1}] at @s run summon minecraft:creeper ~ ~ ~-2 {powered:1,ExplosionRadius:0,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:10000000,Amplifier:1,ShowParticles:0b}],Tags:["cloak4","spectator"]}
execute as @a[scores={cloakRC=1}] at @s run summon minecraft:creeper ~-2 ~ ~1 {powered:1,ExplosionRadius:0,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:10000000,Amplifier:1,ShowParticles:0b}],Tags:["cloak5","spectator"]}
execute as @a[scores={cloakRC=1}] at @s run summon minecraft:creeper ~-2 ~ ~-1 {powered:1,ExplosionRadius:0,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:10000000,Amplifier:1,ShowParticles:0b}],Tags:["cloak6","spectator"]}

execute as @r at @s run attribute @s minecraft:generic.knockback_resistance base set 1000
execute as @r at @s run effect give @s minecraft:resistance 1000000 4 true
execute as @r at @s run effect give @s minecraft:weakness 1000000 100 true
tellraw @a ["",{"text":"Creeper Veil","color":"light_purple"},{"text":" Activated!","color":"green"}]
scoreboard players set @p cloakWarn 1
function sbremake:items/cloak/sound