scoreboard players operation #int damageHologram = @a[limit=1] damageHologram
scoreboard players operation #decimal damageHologram = #int damageHologram

scoreboard players operation #int damageHologram /= #10 const
scoreboard players operation #decimal damageHologram %= #10 const

summon minecraft:text_display ~ ~ ~ {text:'[{"score":{"name":"#int","objective":"damageHologram"},"color": "gray"},{"text":".","color": "gray"},{"score":{"name":"#decimal","objective":"damageHologram"},"color": "gray"}]',Tags:["damageHologram","spectator"],NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,billboard:"center"}

spreadplayers ~ ~ 0 1.0 false @e[tag=damageHologram,tag=!hologramTeleported]
execute as @e[tag=damageHologram,tag=!hologramTeleported] run data modify entity @s Pos[1] set from entity @e[tag=hologramTmp,limit=1] Pos[1]

execute as @e[tag=damageHologram,tag=!hologramTeleported] at @s run tp @s ~ ~1 ~
tag @e[tag=damageHologram,tag=!hologramTeleported] add hologramTeleported

scoreboard players set @a damageHologram 0