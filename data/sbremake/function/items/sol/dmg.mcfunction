schedule clear sbremake:items/sol/dmg
execute as @e[tag=shadowMark,tag=!spectator] run tag @s add hologramTmp

scoreboard players operation @a damageHologram = @p solMaxDmg3
execute at @e[tag=hologramTmp] run function sbremake:utils/holograms/magic

execute as @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable] store result score @s solMaxDmg3 run scoreboard players get @p solMaxDmg3
execute as @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable] run scoreboard players operation @s health -= @s solMaxDmg3
damage @s[tag=hologramTmp,tag=newDmg,tag=!invulnerable] 0 sbremake:magic_damage by @p

tag @p add magicDamage
scoreboard players operation @a magicDamage = @a[limit=1] solMaxDmg3
attribute @e[tag=hologramTmp,limit=1] generic.knockback_resistance base set 100
execute as @e[tag=hologramTmp,limit=1,tag=!newDmg] run function sbremake:utils/damages/magic_damage
attribute @e[tag=hologramTmp,limit=1] generic.knockback_resistance base set 0
tag @p remove magicDamage

tag @e[tag=hologramTmp] remove hologramTmp