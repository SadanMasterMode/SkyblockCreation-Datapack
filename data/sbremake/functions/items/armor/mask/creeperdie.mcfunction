execute at @a[limit=1] as @e[type=creeper,distance=..20] at @s facing entity @a[limit=1] feet positioned ^ ^ ^-1 if block ~ ~ ~ air run tp @s ~ ~ ~
execute at @a[limit=1] as @e[type=minecraft:tnt,distance=..20] at @s facing entity @a[limit=1] feet positioned ^ ^0.01 ^-1 if block ~ ~ ~ air run tp @s ~ ~ ~
execute at @a[limit=1] as @e[type=minecraft:wither_skull,distance=..20] at @s facing entity @a[limit=1] feet positioned ^ ^ ^-1 if block ~ ~ ~ air run tp @s ~ ~ ~