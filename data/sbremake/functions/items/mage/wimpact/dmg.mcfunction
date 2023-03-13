tag @s add hologramTmp

scoreboard players set @a damageHologram 6
execute at @s run function sbremake:utils/holograms/magic

execute as @s[tag=newDmg,tag=!invulnerable] run scoreboard players operation @s health -= #6 const
execute as @s[tag=newDmg,tag=!invulnerable] run damage @s 0 magic by @p

tag @p add magicDamage
scoreboard players set @a magicDamage 6
attribute @s generic.knockback_resistance base set 100
execute as @s[tag=!newDmg] run function sbremake:utils/damages/magic_damage
attribute @s generic.knockback_resistance base set 0
tag @p remove magicDamage

scoreboard players set @a solMaxDmg 60

tag @s remove hologramTmp