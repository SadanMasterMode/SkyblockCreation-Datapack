summon text_display ~ ~ ~ {text:'[{"score":{"name": "@a[limit=1]","objective": "damageHologram"},"color": "gray"}]',Tags:["damageHologram","spectator"],NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,billboard:"center"}

spreadplayers ~ ~ 0 1.0 false @e[tag=damageHologram,tag=!hologramTeleported]
execute as @e[tag=damageHologram,tag=!hologramTeleported] run data modify entity @s Pos[1] set from entity @e[tag=hologramTmp,limit=1] Pos[1]

execute as @e[tag=damageHologram,tag=!hologramTeleported] at @s run tp @s ~ ~1 ~
tag @e[tag=damageHologram,tag=!hologramTeleported] add hologramTeleported

scoreboard players set @a damageHologram 0