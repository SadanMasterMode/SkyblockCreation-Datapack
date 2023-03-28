scoreboard players add @s life 1

tag @e[distance=..3,tag=!spectator,type=!#sbremake:never-detect] add lifeMark
tag @e[distance=3..,tag=lifeMark] remove lifeMark

execute if entity @s[scores={life=300..}] run function sbremake:items/sol/death-1
effect give @e[tag=lifeMark,tag=!undead] instant_health 1 0 true
effect give @a[distance=..3] instant_health 1 0 true
effect give @e[tag=lifeMark,tag=undead] instant_damage 1 0 true 

schedule function sbremake:items/sol/particles 4t append
execute if block ~ ~ ~ air run tp @s[tag=!noMovement] ^ ^ ^-0.2