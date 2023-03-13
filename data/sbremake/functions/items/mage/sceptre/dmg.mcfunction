tag @s add hologramTmp

scoreboard players set @a damageHologram 3
execute at @s run function sbremake:utils/holograms/magic

execute as @s[tag=newDm,tag=!invulnerableg] run scoreboard players operation @s health -= #3 const
damage @s[tag=newDmg,tag=!invulnerable] 0 magic by @p

tag @p add magicDamage
scoreboard players set @a magicDamage 3
attribute @s generic.knockback_resistance base set 100
execute as @s[tag=!newDmg] run function sbremake:utils/damages/magic_damage
attribute @s generic.knockback_resistance base set 0
tag @p remove magicDamage

scoreboard players set @a solMaxDmg 30

tag @s remove hologramTmp