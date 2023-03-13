execute at @e[tag=cinematic] as @a[distance=..5] unless score @s dwindlerCinematic matches 1.. run scoreboard players add @s dwindlerCinematic 1

execute as @e[tag=cinematicEntrance] run data merge entity @s {Time:-2147483648}
execute at @e[tag=cinematicEntrance] as @a[distance=..0.5] unless score #dwindlerCinematicEntrance fakePlayers matches 1 run tellraw @s [{"text": "You uncovered a secret passageway!","color": "green"}]
execute at @e[tag=cinematicEntrance] as @a[distance=..0.5] unless score #dwindlerCinematicEntrance fakePlayers matches 1 run scoreboard players set #dwindlerCinematicEntrance fakePlayers 1

effect give @e[tag=cinematicMark] resistance 1000000 5 true
effect give @e[tag=cinematicMark] invisibility 1000000 5 true
execute as @e[tag=cinematicMark,nbt={HurtTime:10s}] run tellraw @p [{"text": "You can't kill whats already dead.","color": "dark_gray"}]

execute if score #inWorld fakePlayers matches 1 unless entity @e[tag=cinematicEntrance] run summon falling_block 61.5 44 -35.5 {Time:-2147483648,NoGravity:1b,BlockState:{Name:"minecraft:stone"},Tags:["cinematicEntrance"]}
execute if score #inWorld fakePlayers matches 1 unless entity @e[tag=cinematicMark] run summon minecraft:zombie 62.5 43 -29.5 {NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["cinematicMark","spectator"],ActiveEffects:[{Id:11,Duration:100000000,Amplifier:5,ShowParticles:0b},{Id:14,Duration:100000000,Amplifier:1,ShowParticles:0b}]}
execute if score #inWorld fakePlayers matches 1 unless entity @e[tag=cinematic] run summon armor_stand 62.5 43 -29.5 {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12237498}}},{id:"leather_leggings",Count:1b,tag:{display:{color:8553090}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:5197647}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;1279311503,-758167039,-2084142551,-600306466],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDM5Mjc0ZjFmNWI2NjAyYmE5ODJjZWZiNmEzZGIwMWNhNDgyMTBhYWIzZDU2MzE3ODFhZGVlODgzMjEwOTFmMCJ9fX0="}]}}}}],HandItems:[{id:"paper",Count:1b},{}],Tags:["cinematic","spectator"],DisabledSlots:4144959,Pose:{Head:[48f,0f,0f],LeftLeg:[286f,335f,0f],RightLeg:[286f,19f,0f],LeftArm:[343f,0f,0f],RightArm:[313f,0f,0f]}}

execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #inWorld fakePlayers matches 1 run schedule function sbremake:world/dwindler/particle 20t append

execute as @a[scores={dwindlerCinematic=1..60}] at @s run tp @s ~ ~ ~ facing entity @e[tag=cinematic,limit=1,sort=nearest] feet
execute as @a[scores={dwindlerCinematic=1}] at @s run tellraw @s [{"text": "A lifeless husk lies on the ground","color": "dark_gray","italic": true}]
execute as @a[scores={dwindlerCinematic=1}] at @s run effect give @s slowness 3 100 true
execute as @a[scores={dwindlerCinematic=1}] at @s run effect give @s jump_boost 3 200 true
execute as @a[scores={dwindlerCinematic=1}] at @s run attribute @s generic.movement_speed base set 0
execute as @a[scores={dwindlerCinematic=60}] at @s run tellraw @s [{"text": "It seems to have died a slow, painful death","color": "dark_gray","italic": true}]
execute as @a[scores={dwindlerCinematic=60}] at @s run attribute @s generic.movement_speed base set 0.1
execute as @a[scores={dwindlerCinematic=1200..}] run scoreboard players reset @s dwindlerCinematic

execute as @a[scores={dwindlerCinematic=1..1200}] run scoreboard players add @s dwindlerCinematic 1