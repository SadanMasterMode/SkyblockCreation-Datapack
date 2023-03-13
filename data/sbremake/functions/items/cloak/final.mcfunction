execute as @a[scores={cloakRC=2..}] at @s run tp @e[tag=cloak1] ~ ~-500 ~
execute as @a[scores={cloakRC=2..}] at @s run tp @e[tag=cloak2] ~ ~-500 ~
execute as @a[scores={cloakRC=2..}] at @s run tp @e[tag=cloak3] ~ ~-500 ~
execute as @a[scores={cloakRC=2..}] at @s run tp @e[tag=cloak4] ~ ~-500 ~
execute as @a[scores={cloakRC=2..}] at @s run tp @e[tag=cloak5] ~ ~-500 ~
execute as @a[scores={cloakRC=2..}] at @s run tp @e[tag=cloak6] ~ ~-500 ~
execute if entity @p[scores={cloakRC=2..}] run kill @e[tag=cloak1]
execute if entity @p[scores={cloakRC=2..}] run kill @e[tag=cloak2]
execute if entity @p[scores={cloakRC=2..}] run kill @e[tag=cloak3]
execute if entity @p[scores={cloakRC=2..}] run kill @e[tag=cloak4]
execute if entity @p[scores={cloakRC=2..}] run kill @e[tag=cloak5]
execute if entity @p[scores={cloakRC=2..}] run kill @e[tag=cloak6]

execute as @r at @s run attribute @s minecraft:generic.knockback_resistance base set 0
execute as @r at @s run effect clear @s resistance
execute as @r at @s run effect clear @s minecraft:weakness
execute as @r at @s run effect clear @s minecraft:invisibility
scoreboard players reset @s cloakRC
scoreboard players reset @s cloakRC2
tellraw @a ["",{"text":"Creeper Veil","color":"light_purple"},{"text":" De-Activated!","color":"red"}]
scoreboard players set @p cloakWarn 0
schedule clear sbremake:items/cloak/sound