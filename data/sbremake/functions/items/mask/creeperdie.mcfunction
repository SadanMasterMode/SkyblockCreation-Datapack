execute at @p as @e[type=creeper,distance=..20] at @s facing entity @p feet positioned ^ ^ ^-1 if block ~ ~ ~ air run tp @s ~ ~ ~
execute at @p as @e[type=minecraft:tnt,distance=..20] at @s facing entity @p feet positioned ^ ^0.01 ^-1 if block ~ ~ ~ air run tp @s ~ ~ ~
execute at @p as @e[type=minecraft:wither_skull,distance=..20] at @s facing entity @p feet positioned ^ ^ ^-1 if block ~ ~ ~ air run tp @s ~ ~ ~