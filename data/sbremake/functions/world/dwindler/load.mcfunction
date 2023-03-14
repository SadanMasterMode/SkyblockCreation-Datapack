scoreboard objectives add dwindlerDeaths minecraft.custom:minecraft.deaths
scoreboard objectives add dwindlerCinematic dummy
scoreboard objectives add dmgDealt minecraft.custom:minecraft.damage_dealt_resisted

scoreboard players set #dwindlerCinematicEntrance fakePlayers 0
scoreboard players set @a dwindlerCinematic 0

kill @e[tag=dwindlerDream]

kill @e[tag=cinematicEntrance]
execute if score #inWorld fakePlayers matches 1 run summon block_display 61.0 44 -36.0 {NoGravity:1b,block_state:{Name:"minecraft:stone"},Tags:["cinematicEntrance","spectator"],brightness:{block:1,sky:0}}

kill @e[tag=cinematicMark]
execute if score #inWorld fakePlayers matches 1 run summon minecraft:interaction 62.5 43 -29.5 {Invulnerable:1b,NoGravity:1b,Tags:["cinematicMark","spectator"],height:2,width:1}

kill @e[tag=crystalHeartHide]
execute if score #inWorld fakePlayers matches 1 run summon minecraft:interaction 57.5 47 -51.5 {Invulnerable:1b,NoGravity:1b,Tags:["crystalHeartHide","spectator"],height:3,width:3}

kill @e[tag=cinematic]
execute if score #inWorld fakePlayers matches 1 run summon armor_stand 62.5 42.4 -29.5 {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12237498}}},{id:"leather_leggings",Count:1b,tag:{display:{color:8553090}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:5197647}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;1279311503,-758167039,-2084142551,-600306466],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDM5Mjc0ZjFmNWI2NjAyYmE5ODJjZWZiNmEzZGIwMWNhNDgyMTBhYWIzZDU2MzE3ODFhZGVlODgzMjEwOTFmMCJ9fX0="}]}}}}],HandItems:[{id:"paper",Count:1b},{}],Tags:["cinematic","spectator"],DisabledSlots:4144959,Pose:{Head:[48f,0f,0f],LeftLeg:[270f,335f,0f],RightLeg:[270f,19f,0f],LeftArm:[343f,0f,0f],RightArm:[313f,0f,0f]},Rotation:[140.0f,0.0f]}