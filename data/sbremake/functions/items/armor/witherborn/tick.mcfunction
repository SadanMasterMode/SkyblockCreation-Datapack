execute if score @p headWitherborn matches 0 run scoreboard players set @p witherbornCD 0
execute if score @p cpWitherborn matches 0 run scoreboard players set @p witherbornCD 0
execute if score @p leggingsWitherborn matches 0 run scoreboard players set @p witherbornCD 0
execute if score @p bootsWitherborn matches 0 run scoreboard players set @p witherbornCD 0
execute as @e[tag=witherbornMarked] run effect give @s glowing 1 0 true
execute as @p at @s run tp @e[tag=witherbornMarker] ~ ~-3.5 ~
execute at @e[tag=witherbornMarked] run tp @e[tag=witherbornStand] ~ ~-3.5 ~
team join noName @e[tag=witherborn]
execute as @e[tag=witherbornMarker] at @s run tp @s ~ ~ ~ ~2 ~
execute as @e[tag=witherborn,tag=mob1] at @e[tag=witherbornMarker] unless entity @e[tag=witherbornMarked] run tp @s ^ ^ ^1.5 facing entity @e[tag=witherbornMarker,limit=1]
execute unless entity @e[tag=witherbornMarked] as @e[tag=witherborn,tag=mob1] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=witherborn,tag=mob2] at @e[tag=witherbornMarker] unless entity @e[tag=witherbornMarked] run tp @s ^ ^ ^-1.5 facing entity @e[tag=witherbornMarker,limit=1]
execute unless entity @e[tag=witherbornMarked] as @e[tag=witherborn,tag=mob2] at @s run tp @s ~ ~ ~ ~-180 ~
scoreboard players add @p witherbornCD 1
execute if score @p headWitherborn matches 1 if score @p cpWitherborn matches 1 if score @p leggingsWitherborn matches 1 if score @p bootsWitherborn matches 1 if score @p witherbornCD matches 600.. unless score @p witherbornCount matches 2.. run function sbremake:items/armor/witherborn/main

execute if entity @e[tag=witherborn] at @p as @e[distance=..12,tag=!spectator] unless entity @e[tag=witherbornStand,limit=1] run summon minecraft:marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["witherbornStand"]} 
execute if entity @e[tag=witherborn] at @p as @e[distance=..12,tag=!spectator] unless entity @e[tag=witherbornMarked,limit=1] run tag @s add witherbornMarked

execute if entity @e[tag=witherbornMarked] run function sbremake:items/armor/witherborn/final