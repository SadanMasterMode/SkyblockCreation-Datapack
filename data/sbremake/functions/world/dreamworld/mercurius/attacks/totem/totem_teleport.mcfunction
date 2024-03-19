tag @s add tmp
fill ~ ~ ~ ~ ~3 ~ air replace barrier
execute in sbremake:dreamworld run spreadplayers 100 99 1.0 18 false @s

execute unless block ~ ~ ~ #sbremake:items/air unless block ~ ~1 ~ #sbremake:items/air unless block ~ ~2 ~ #sbremake:items/air unless block ~ ~3 ~ #sbremake:items/air run function sbremake:world/dreamworld/mercurius/attacks/totem/totem_teleport
execute if entity @e[tag=mercuriusTotem,type=area_effect_cloud,distance=..3,tag=!tmp] run function sbremake:world/dreamworld/mercurius/attacks/totem/totem_teleport

tag @s remove tmp
