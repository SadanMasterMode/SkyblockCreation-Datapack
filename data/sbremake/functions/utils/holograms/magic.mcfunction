execute in overworld run data modify block 3000000 1 3000000 Text1 set value '[{"score":{"name": "@p","objective": "damageHologram"},"color": "gray"}]'
execute in overworld positioned 3000000 1 3000000 run kill @e[type=item,nbt={Item:{id:"minecraft:oak_sign",Count:1b}},limit=1,sort=nearest]

summon armor_stand ~ ~-10 ~ {CustomName:'{"text": "N/A","color": "gray"}',Tags:["damageHologram","spectator"],NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Invulnerable:1b,Marker:1b}
execute in overworld run data modify entity @e[tag=damageHologram,limit=1,tag=!hologramTeleported] CustomName set from block 3000000 1 3000000 Text1

spreadplayers ~ ~ 0 1.0 false @e[tag=damageHologram,tag=!hologramTeleported]
execute as @e[tag=damageHologram,tag=!hologramTeleported] run data modify entity @s Pos[1] set from entity @e[tag=hologramTmp,limit=1] Pos[1]
execute as @e[tag=damageHologram,tag=!hologramTeleported] at @s run tp @s ~ ~1 ~
tag @e[tag=damageHologram,tag=!hologramTeleported] add hologramTeleported

scoreboard players set @a damageHologram 0