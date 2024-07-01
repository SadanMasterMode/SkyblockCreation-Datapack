execute as a816fc8b-de39-49d5-be27-49efb1d5bca7 at @s if block ~ ~1.35 ~ #sbremake:blocks run tp @s ~ ~-0.05 ~ ~40 ~
execute as a816fc8b-de39-49d5-be27-49efb1d5bca7 at @s unless block ~ ~1.35 ~ #sbremake:blocks run tp @s ~ ~ ~ 41.5 ~

execute as @a[scores={solMaxDmg=1..},tag=!inDwindlerBoss] run function sbremake:utils/sol_max_dmg

# Fight Start
execute if score #inWorld fakePlayers matches 1 positioned 54 42 -48 unless entity b52d6f46-0525-4fc1-987e-ad090cc4d0a3 run summon marker ~ ~ ~ {Tags:["dwindlerIntro","spectator"],UUID:[I;-1255313594,86331329,-1736528631,214225059],data:{SBRemake:{UUID:"b52d6f46-0525-4fc1-987e-ad090cc4d0a3"}}}
# Text Display
execute if score #inWorld fakePlayers matches 1 positioned 39.5 58 -25 unless entity 1d95aea1-0c33-40ac-a2bb-35e4f953e887 run summon text_display ~ ~ ~ {Tags:["mistyMineMarker","spectator"],UUID:[I;496348833,204685484,-1564789276,-111941497],text:'[{"text": "MISTY MINES","color": "gold","bold": true},{"text": "\\n⚠ Warning: Dangerous area, come prepared!","color": "red","bold": false}]',alignment:"center",billboard:"center",see_through:0b,background:0}
## "1d95aea1-0c33-40ac-a2bb-35e4f953e887"

execute at b52d6f46-0525-4fc1-987e-ad090cc4d0a3 as @a[distance=..3,tag=!dwindlerFight,tag=mistyMines] run tag @s add dwindlerFight
execute as @a[tag=dwindlerFight] run function sbremake:world/dwindler/main
execute as @a[tag=inDwindlerBoss] unless entity 7767141e-9475-49e9-bc12-971010d9f0ad run function sbremake:world/dwindler/crystal_death
execute as @a[tag=crystalDeath] unless entity 7767141e-9475-49e9-bc12-971010d9f0ad run function sbremake:world/dwindler/crystal_death
execute as @a[tag=inDwindlerBoss] if score 7767141e-9475-49e9-bc12-971010d9f0ad health matches ..0 run function sbremake:world/dwindler/end_fight
execute as @a[tag=inDwindlerBoss,scores={dwindlerDeaths=1..}] run function sbremake:world/dwindler/player_died

execute if score #inWorld fakePlayers matches 1 if entity @a[predicate=sbremake:world/cinematic/dimension_check,limit=1] in overworld run function sbremake:world/dwindler/cinematic/tick

# Crystal Heart
execute if score #killedDwindler fakePlayers matches 0 unless entity f2f3c520-8ba4-4430-a79b-0b29d6310bb9 if score #inWorld fakePlayers matches 1 run summon minecraft:end_crystal 57.5 47.5 -51.5 {Invulnerable:1b,ShowBottom:0b,Tags:["crystalHeart","spectator"],UUID:[I;-218905312,-1952168912,-1483011287,-701428807]}
## f2f3c520-8ba4-4430-a79b-0b29d6310bb9
# Text Display
execute if score #killedDwindler fakePlayers matches 0 unless entity 084958cd-af77-4e8b-bd3d-980a17862ca0 if score #inWorld fakePlayers matches 1 run summon text_display 57.5 46.9 -51.5 {Tags:["crystalHeart","spectator"],UUID:[I;139024589,-1351135605,-1120036854,394669216],text:'[{"text": "﴾ ","color": "yellow"},{"text": "Crystal Heart","color": "dark_purple"},{"text": " ﴿","color": "yellow"}]',alignment:"center",billboard:"center",see_through:0b,background:0}
## 084958cd-af77-4e8b-bd3d-980a17862ca0 

execute as @a[scores={dmgDealt=1..},tag=inDwindlerBoss] run function sbremake:utils/sol_max_dmg
scoreboard players set @a dmgDealt 0

effect give 7767141e-9475-49e9-bc12-971010d9f0ad instant_health infinite 100 true