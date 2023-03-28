scoreboard players add @s life 1

execute if entity @s[scores={life=300..}] run function sbremake:items/sol/death-2
tag @e[distance=..3,tag=!spectator,type=!#sbremake:never-detect] add shadowMark
tag @e[distance=3..,tag=shadowMark] remove shadowMark

schedule function sbremake:items/sol/particles2 4t append
execute if block ~ ~ ~ air run tp @s[tag=!noMovement] ^ ^ ^-0.2