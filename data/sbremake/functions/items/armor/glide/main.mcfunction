tag @s add inGlide
scoreboard players set @s glideTime 60
summon minecraft:text_display ~ ~ ~ {Tags:["glide","spectator"],billboard:"vertical",text:'{"score":{"name": "@a[tag=inGlide,limit=1]","objective": "glideTime"},"color": "green"}',UUID:[I;-1641720381,35735938,-1820529462,1719296007],transformation:[1.000f, 0.000f, 0.000f,0.000f,0.000f, 1.000f, 0.000f,1.000f,0.000f, 0.000f, 1.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f]}
# 9e2555c3-0221-4982-937c-ecca667a6007

gamerule sendCommandFeedback false
execute if entity @s run scoreboard players set @s[nbt={playerGameType:0}] gamemode 0
execute if entity @s[nbt={playerGameType:1}] run scoreboard players set @s gamemode 1
execute if entity @s[nbt={playerGameType:2}] run scoreboard players set @s gamemode 2
gamemode spectator @s

scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar ["",{"text":"Used","color":"aqua"},{"text":" Spirit Glide","color":"gold"},{"text":"! (-250 \u270e Mana)","color":"aqua"}]

scoreboard players set @s spiritCD 300
scoreboard players remove @s mana 250
playsound minecraft:block.anvil.land master @s ~ ~ ~
gamerule sendCommandFeedback true