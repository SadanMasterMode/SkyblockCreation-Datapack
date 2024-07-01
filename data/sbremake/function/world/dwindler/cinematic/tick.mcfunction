execute at @e[tag=cinematic] as @a[distance=..4] unless score @s dwindlerCinematic matches 1.. run scoreboard players add @s dwindlerCinematic 1

execute positioned 61.5 44 -35.5 unless score #dwindlerCinematicEntrance fakePlayers matches 1 run tellraw @a[distance=..0.5] [{"text": "You uncovered a secret passageway!","color": "green"}]
execute positioned 61.5 44 -35.5 if entity @a[distance=..0.5,limit=1] unless score #dwindlerCinematicEntrance fakePlayers matches 1 run scoreboard players set #dwindlerCinematicEntrance fakePlayers 1

execute if score #inWorld fakePlayers matches 1 unless entity @e[tag=cinematicEntrance] run summon falling_block 61.5 44 -35.5 {Time:-2147483648,NoGravity:1b,BlockState:{Name:"minecraft:stone"},Tags:["cinematicEntrance"]}

execute positioned 59.50 43.00 -39.5 if entity @a[predicate=sbremake:world/cinematic/dimension_check,limit=1,distance=..25] if score #inWorld fakePlayers matches 1 run schedule function sbremake:world/dwindler/particle 20t append

execute as @a[scores={dwindlerCinematic=1..60}] at @s run tp @s ~ ~ ~ facing entity @e[tag=cinematic,limit=1] feet
execute as @a[scores={dwindlerCinematic=1}] at @s run tellraw @s [{"text": "A lifeless husk lies on the ground","color": "dark_gray","italic": true}]
execute as @a[scores={dwindlerCinematic=1}] at @s run effect give @s slowness 3 100 true
execute as @a[scores={dwindlerCinematic=1}] at @s run effect give @s jump_boost 3 200 true
execute as @a[scores={dwindlerCinematic=1}] at @s run attribute @s generic.movement_speed base set 0
execute as @a[scores={dwindlerCinematic=60}] at @s run tellraw @s [{"text": "It seems to have died a slow, painful death","color": "dark_gray","italic": true}]
execute as @a[scores={dwindlerCinematic=60}] at @s run attribute @s generic.movement_speed base set 0.1
execute as @a[scores={dwindlerCinematic=1200..}] run scoreboard players reset @s dwindlerCinematic

execute as @a[scores={dwindlerCinematic=1..1200}] run scoreboard players add @s dwindlerCinematic 1