schedule clear sbremake:items/ffs/final

execute at @e[tag=ffs] as @e[distance=..5,tag=!spectator] run tag @s add ffsMark

execute at @e[tag=ffs] run particle smoke ~ ~1.5 ~ 0 0 0 0.2 1000 normal
execute at @e[tag=ffs] run particle smoke ~ ~1.5 ~ 0 0 0 0.2 1000 normal
execute at @e[tag=ffs] run particle smoke ~ ~1.5 ~ 0 0 0 0.2 1000 normal
execute as @e[tag=ffs,scores={ffsLife=100..}] run kill @s
execute as @e[tag=ffs1,scores={ffsLife=100..}] run kill @s
execute as @e[tag=ffs2,scores={ffsLife=100..}] run kill @s
execute as @e[tag=ffs3,scores={ffsLife=100..}] run kill @s
execute as @e[tag=ffs4,scores={ffsLife=100..}] run kill @s
execute as @e[tag=ffs5,scores={ffsLife=100..}] run kill @s
execute as @e[tag=ffs6,scores={ffsLife=100..}] run kill @s
execute as @e[tag=ffs7,scores={ffsLife=100..}] run kill @s
execute as @e[tag=ffs8,scores={ffsLife=100..}] run kill @s

execute at @p run playsound entity.wither.death master @p ~ ~ ~