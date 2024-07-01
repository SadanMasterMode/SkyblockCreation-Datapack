execute in overworld run tp @a 0.5 56.5 0.5
execute if score #fragmented-memories achievements matches 0 run tellraw @a [{"text": "The Mercurius fight is fully replayable!","color": "dark_gray","italic": true}]
tag @s remove inMercurius
execute as @a at @s if score #fragmented-memories achievements matches 0 run function sbremake:achievements/fragmented-memories
effect clear @a saturation
effect clear @a resistance
gamerule naturalRegeneration true
playsound entity.experience_orb.pickup master @a