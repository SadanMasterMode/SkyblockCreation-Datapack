scoreboard objectives add dwindlerDeaths minecraft.custom:minecraft.deaths
scoreboard objectives add dwindlerCinematic dummy
scoreboard objectives add dmgDealt minecraft.custom:minecraft.damage_dealt_resisted

scoreboard players set #dwindlerCinematicEntrance fakePlayers 0
scoreboard players set @p dwindlerCinematic 0

kill @e[tag=dwindlerDream]

tag d917bf25-e088-4283-bb8a-1f79c9d35ab6 add cinematic
kill @e[tag=cinematicEntrance]
execute if score #inWorld fakePlayers matches 1 run summon falling_block 61.5 44 -35.5 {Time:-2147483648,NoGravity:1b,BlockState:{Name:"minecraft:stone"},Tags:["cinematicEntrance"]}
kill @e[tag=cinematicMark]
execute if score #inWorld fakePlayers matches 1 run summon minecraft:zombie 62.5 43 -29.5 {NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["cinematicMark","spectator"],ActiveEffects:[{Id:11,Duration:100000000,Amplifier:5,ShowParticles:0b},{Id:14,Duration:100000000,Amplifier:1,ShowParticles:0b}]}
kill @e[type=item]

tp @e[tag=crystalHeartHide] ~ ~-1000 ~
kill @e[tag=crystalHeartHide]
execute if score #inWorld fakePlayers matches 1 run summon minecraft:elder_guardian 57.5 47 -51.5 {Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["crystalHeartHide","spectator"],Team:player,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:1,ShowParticles:0b},{Id:11,Duration:100000000,Amplifier:5,ShowParticles:0b},{Id:10,Duration:100000000,Amplifier:100,ShowParticles:0b}]} 