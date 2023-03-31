execute as @e[type=vex] run scoreboard players add @s life 1
execute as @e[type=vex,scores={life=300..}] run kill @s

execute as a816fc8b-de39-49d5-be27-49efb1d5bca7 at @s if block ~ ~1.35 ~ #sbremake:blocks run tp @s ~ ~-0.05 ~ ~40 ~
execute as a816fc8b-de39-49d5-be27-49efb1d5bca7 at @s unless block ~ ~1.35 ~ #sbremake:blocks run tp @s ~ ~ ~ 41.5 ~

execute at @e[tag=dwindlerIntro] as @a[distance=..3,tag=!dwindlerFight,tag=mistyMines] run tag @s add dwindlerFight
execute as @a[tag=dwindlerFight] run function sbremake:world/dwindler/main
execute as @a[tag=inDwindlerBoss] unless entity @e[tag=dwindler,limit=1] run function sbremake:world/dwindler/crystal_death
execute as @a[tag=crystalDeath] unless entity @e[tag=dwindler,limit=1] run function sbremake:world/dwindler/crystal_death
execute as @a[tag=inDwindlerBoss] if score @e[tag=dwindler,limit=1] health matches ..0 run function sbremake:world/dwindler/end_fight
execute as @a[tag=inDwindlerBoss,scores={dwindlerDeaths=1..}] run function sbremake:world/dwindler/player_died

execute if score #inWorld fakePlayers matches 1 if entity @a[predicate=sbremake:world/cinematic/dimension_check,limit=1] run function sbremake:world/dwindler/cinematic/tick

execute if score #killedDwindler fakePlayers matches 0 unless entity f2f3c520-8ba4-4430-a79b-0b29d6310bb9 if score #inWorld fakePlayers matches 1 run summon minecraft:end_crystal 57.5 47.5 -51.5 {Invulnerable:1b,ShowBottom:0b,Tags:["crystalHeart","spectator"],UUID:[I;-218905312,-1952168912,-1483011287,-701428807]}
# f2f3c520-8ba4-4430-a79b-0b29d6310bb9
execute if score #killedDwindler fakePlayers matches 0 unless entity 084958cd-af77-4e8b-bd3d-980a17862ca0 if score #inWorld fakePlayers matches 1 run summon minecraft:armor_stand 57.5 46.9 -51.5 {Invulnerable:1b,Invisible:1b,Marker:1b,CustomName:'[{"text": "﴾ ","color": "yellow"},{"text": "Crystal Heart","color": "dark_purple"},{"text": " ﴿","color": "yellow"}]',CustomNameVisible:1b,Tags:["crystalHeart","spectator"],UUID:[I;139024589,-1351135605,-1120036854,394669216]}
# 084958cd-af77-4e8b-bd3d-980a17862ca0

execute as @a[scores={dmgDealt=1..},tag=inDwindlerBoss] run function sbremake:utils/sol_max_dmg
scoreboard players set @a dmgDealt 0

effect give @e[tag=dwindler] instant_health infinite 100 true