tag @s add hologramTmp
attribute @s generic.knockback_resistance base set 100

scoreboard players set @a damageHologram 2
execute at @s run function sbremake:utils/holograms/magic

execute as @s[tag=newDmg,tag=!invulnerable] run scoreboard players remove @s health 2
damage @s[tag=newDmg,tag=!invulnerable] 0 sbremake:magic_damage by @a[limit=1]

tag @a add magicDamage
scoreboard players set @a magicDamage 2
execute as @s[tag=!newDmg] run function sbremake:utils/damages/magic_damage
tag @a remove magicDamage

scoreboard players set @a solMaxDmg 20

attribute @s generic.knockback_resistance base set 0
tag @s remove hologramTmp