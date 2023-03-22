execute as @e[distance=..5.5,tag=!spectator,type=!#sbremake:never-detect] run tag @s add ffsMark

particle smoke ~ ~1.5 ~ 0 0 0 0.2 1000 normal
kill @s
kill @e[tag=ffsHeads]

playsound entity.wither.death master @a[distance=..10] ~ ~ ~