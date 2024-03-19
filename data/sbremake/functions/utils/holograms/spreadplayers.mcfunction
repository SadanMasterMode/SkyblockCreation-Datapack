scoreboard players add #count damageHologram 1
tp @s @e[tag=hologramTmp,limit=1]
spreadplayers ~ ~ 0 1.0 false @s
data modify entity @s Pos[1] set from entity @e[tag=hologramTmp,limit=1] Pos[1]

execute if score #count damageHologram matches 20.. run return 1
execute at @s unless entity @e[tag=hologramTmp,distance=..0.1,limit=1] positioned ~ ~1 ~ unless entity @e[tag=damageHologram,distance=..0.5,tag=hologramTeleported,limit=1] run return 2
return run function sbremake:utils/holograms/spreadplayers