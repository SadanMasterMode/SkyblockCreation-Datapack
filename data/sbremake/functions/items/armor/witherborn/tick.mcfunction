execute as @a if entity @s[predicate=!sbremake:items/armor/witherborn/wearing-all] run scoreboard players set @s witherbornCD 0
execute at @a run tp 4addf402-f099-43be-908c-286adb617fd5 ~ ~-3.5 ~
execute at @e[tag=witherbornMarked] run tp 638e122c-b657-4d30-a679-7358a2d5f184 ~ ~-3.5 ~

execute as @e[tag=witherborn,type=area_effect_cloud] store result entity @s Air short 1 run time query gametime

team join noName @e[tag=witherborn]

execute as 4addf402-f099-43be-908c-286adb617fd5 at @s run tp @s ~ ~ ~ ~2 ~

execute as @e[tag=witherborn,tag=mob-1,type=area_effect_cloud] at 4addf402-f099-43be-908c-286adb617fd5 unless entity @e[tag=witherbornMarked] run tp @s ^ ^ ^1.5 facing entity @e[tag=witherbornMarker,limit=1]
execute as @e[tag=witherborn,tag=mob-2,type=area_effect_cloud] at 4addf402-f099-43be-908c-286adb617fd5 unless entity @e[tag=witherbornMarked] run tp @s ^ ^ ^-1.5 facing entity @e[tag=witherbornMarker,limit=1]

scoreboard players add @p witherbornCD 1
execute if score @p headWitherborn matches 1 if score @p cpWitherborn matches 1 if score @p leggingsWitherborn matches 1 if score @p bootsWitherborn matches 1 if score @p witherbornCD matches 600.. unless score @p witherbornCount matches 2.. run function sbremake:items/armor/witherborn/main

execute if entity @e[tag=witherborn] at @a as @e[distance=..12,tag=!spectator,type=!#sbremake:never-detect,limit=1,sort=nearest] at @s unless entity 638e122c-b657-4d30-a679-7358a2d5f184 run summon minecraft:marker ~ ~-3.5 ~ {Invulnerable:1b,NoGravity:1b,Tags:["witherbornStand"],UUID:[I;1670255148,-1235792592,-1501990056,-1563037308],data:{SBRemake:{UUID:"638e122c-b657-4d30-a679-7358a2d5f184"}}}
execute if entity @e[tag=witherborn] at @a as @e[distance=..12,tag=!spectator,type=!#sbremake:never-detect,limit=1,sort=nearest] unless entity @e[tag=witherbornMarked,limit=1] run tag @s add witherbornMarked

execute if entity @e[tag=witherbornMarked] run function sbremake:items/armor/witherborn/final