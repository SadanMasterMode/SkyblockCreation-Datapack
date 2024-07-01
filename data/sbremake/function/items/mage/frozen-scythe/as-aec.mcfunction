execute store result entity @s Air short 1 run time query gametime
scoreboard players add @s life 1
execute if score @s life matches 100.. on passengers run kill @s
execute if score @s life matches 100.. run kill @s

execute if block ~ ~ ~ #sbremake:items/air run particle cloud ~ ~0.25 ~ 0 0 0 0 1 normal

execute if block ~ ~ ~ #sbremake:items/air store result score @a success as @e[dx=0,dz=0,tag=!spectator,type=!#sbremake:never-detect] at @s run function sbremake:items/mage/frozen-scythe/dmg
execute if score @a[limit=1] success matches 1 on passengers run kill @s
execute if score @a[limit=1] success matches 1 run kill @s

execute if block ~ ~ ~ #sbremake:items/air run tp @s ^ ^ ^1