scoreboard players set @s dhPause 1
scoreboard players add @s dhGleamingSpawn 1

execute if score @s dhGleamingSpawn matches 1..55 positioned 28 57 25 run particle portal ~ ~0.4 ~ 0 0 0 1 100 normal
execute if score @s dhGleamingSpawn matches 50..99 positioned 28 57 25 run particle electric_spark ~ ~0.4 ~ 0 0 0 0.1 100 normal

execute if score @s dhGleamingSpawn matches 1..99 positioned 28 57 25 run playsound minecraft:entity.evoker.celebrate master @s ~ ~ ~ 0.05 2 0

execute if score @s dhGleamingSpawn matches 100 positioned 28 55 25 run loot spawn ~ ~2 ~ loot sbremake:world/dh/gleaming_blade
execute if score @s dhGleamingSpawn matches 100 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:golden_sword",Count:1b,tag:{gleaming:1b}}},limit=1] {PickupDelay:60s,Tags:["float"],Motion:[0,0,0],Glowing:1b,Air:10s}
execute as @e[tag=float] run function sbremake:utils/item_float
team join green @e[type=item,nbt={Item:{id:"minecraft:golden_sword",Count:1b,tag:{gleaming:1b}}},limit=1]
execute if score @s dhGleamingSpawn matches 100 positioned 28 57.5 25 run summon text_display ~ ~ ~ {text:'[{"text":"S ","obfuscated": true,"color": "green"},{"text": "GLEAMING BLADE","color": "green","bold": true,"obfuscated": false},{"text": " S","obfuscated": true,"bold": false}]',billboard:"center",Invulnerable:1b,NoGravity:1b,Tags:["gleam","spectator"],CustomNameVisible:1b,see_through:0b,background:0,UUID:[I;1707659289,849625723,-1193020842,-1778586846]}
# "65c8d019-32a4-427b-b8e3-f25695fceb22"
execute if score @s dhGleamingSpawn matches 100 positioned 28 57 25 run particle reverse_portal ~ ~0.4 ~ 0 0 0 1 1000 normal
execute if score @s dhGleamingSpawn matches 100 positioned 28 57 25 run particle explosion ~ ~0.4 ~ 0.5 0.5 0.5 1 1 normal
execute if score @s dhGleamingSpawn matches 100 positioned 28 57 25 run playsound entity.ghast.death master @s ~ ~ ~ 1 1.5 0

execute if score @s dhGleamingSpawn matches 100 run scoreboard players add @s dhRep 1
execute if score @s dhGleamingSpawn matches 100 run tellraw @a ["",{"text":"\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac","color":"dark_aqua"},{"text":"\n"},{"text":"   QUEST COMPLETED","bold":true,"color":"aqua"},{"text":" A Dark Presence","italic":true,"color":"dark_aqua"},{"text":" \u2714","color":"green"},{"text":"\n\n"},{"text":"   REWARDS","bold":true,"color":"green"},{"text":"\n"},{"text":"     +","color":"dark_gray"},{"text":" Gleaming Blade","color":"green"},{"text":"\n"},{"text":"     +","color":"dark_gray"},{"text":" 10,000","color":"gold"},{"text":" Coins","color":"gray"},{"text":"\n"},{"text":"     +","color":"dark_gray"},{"text":" 1","color":"green"},{"text":" Decayed Husk ","color":"gray"},{"text":"\u2646 Reputation","color":"dark_purple"},{"text":"\n"},{"text":"     +","color":"dark_gray"},{"text":" Access to ","color":"gray"},{"text":"Guy's","color":"dark_gray"},{"text":" shop ","color":"gray"},{"text":"(COMING SOON)","bold":true,"color":"red"},{"text":"\n"},{"text":"\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac","color":"dark_aqua"}]
execute if score @s dhGleamingSpawn matches 100 if score @s dhRep matches 2 run tellraw @a [{"text": "You gained maximum reputation for the Decayed Husk this quest!","color": "green","italic": true}]
execute if score @s dhGleamingSpawn matches 100 run scoreboard players add @s dhDialogueProgress 1 