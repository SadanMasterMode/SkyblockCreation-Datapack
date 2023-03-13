scoreboard players operation @p dmgDealt /= @p const10
execute as @e[tag=dwindler] store result score @s healthVis run scoreboard players get @s health
execute as @e[tag=dwindler] run scoreboard players operation @s healthVis -= @p dmgDealt
execute as @e[tag=dwindler] store result score @s health run scoreboard players get @s healthVis