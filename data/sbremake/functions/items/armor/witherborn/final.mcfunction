execute if entity @e[tag=witherborn,tag=mob-1] as @e[tag=witherborn,tag=mob-1,type=area_effect_cloud] at @s run tp @s ^ ^ ^0.5 facing entity 638e122c-b657-4d30-a679-7358a2d5f184
execute unless entity @e[tag=witherborn,tag=mob-1] as @e[tag=witherborn,tag=mob-2,type=area_effect_cloud] at @s run tp @s ^ ^ ^0.5 facing entity 638e122c-b657-4d30-a679-7358a2d5f184

execute at @e[tag=witherborn,tag=mob-1,type=area_effect_cloud] positioned ~ ~4 ~ as @e[tag=witherbornMarked,distance=..1,limit=1,sort=nearest] run function sbremake:items/armor/witherborn/mob1_kill

execute at @e[tag=witherborn,tag=mob-2,type=area_effect_cloud] positioned ~ ~4 ~ as @e[tag=witherbornMarked,distance=..1,limit=1,sort=nearest] run function sbremake:items/armor/witherborn/mob2_kill