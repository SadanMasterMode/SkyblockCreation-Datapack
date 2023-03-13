execute if entity @e[tag=witherborn,tag=mob1] as @e[tag=witherborn,tag=mob1] at @s run tp @s ^ ^ ^0.5 facing entity @e[tag=witherbornStand,limit=1,sort=nearest]
execute unless entity @e[tag=witherborn,tag=mob1] as @e[tag=witherborn,tag=mob2] at @s run tp @s ^ ^ ^0.5 facing entity @e[tag=witherbornStand,limit=1,sort=nearest]

execute at @e[tag=witherborn,tag=mob1] if entity @e[tag=witherbornMarked,distance=..4] run function sbremake:items/armor/witherborn/mob1_kill

execute at @e[tag=witherborn,tag=mob2] if entity @e[tag=witherbornMarked,distance=..4] run function sbremake:items/armor/witherborn/mob2_kill