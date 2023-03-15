tag @s[type=!#sbremake:never-detect] add hologramTmp
attribute @s generic.knockback_resistance base set 100

scoreboard players set @a damageHologram 12
execute at @s[tag=hologramTmp] run function sbremake:utils/holograms/magic

execute as @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable] run scoreboard players operation @s health -= #12 const
execute as @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable] run damage @s 0 sbremake:magic_damage by @p

tag @a add magicDamage
scoreboard players set @a magicDamage 12
execute as @s[tag=!newDmg] run function sbremake:utils/damages/magic_damage
tag @a remove magicDamage

execute if entity @e[tag=hologramTmp] run scoreboard players set @p solMaxDmg 120

scoreboard players set @s[tag=hologramTmp] moltenHT 15
attribute @s generic.knockback_resistance base set 0
tag @s[tag=hologramTmp] remove hologramTmp