execute as @e[distance=..5,tag=!spectator,type=!#sbremake:never-detect,tag=!boss] run tag @s add ffsMark
execute as @e[distance=..5,tag=boss] run tellraw @a [{"text": "This mob is too powerful to be frozen!","color": "red"}] 

particle smoke ~ ~1.5 ~ 0 0 0 0.2 1000 normal
kill @s
kill @e[tag=ffsHeads]

playsound entity.wither.death master @a[distance=..10] ~ ~ ~