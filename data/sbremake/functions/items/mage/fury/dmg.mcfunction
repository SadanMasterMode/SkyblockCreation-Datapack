schedule clear sbremake:items/mage/fury/dmg

execute at 90b8d561-8157-464e-9d1c-c1849d65a4fe as @e[distance=..7,tag=!spectator,type=!#sbremake:never-detect] run tag @s add hologramTmp
execute as @e[tag=hologramTmp,tag=!invulnerable] run attribute @s generic.knockback_resistance base set 100

scoreboard players set @a damageHologram 4
execute at @e[tag=hologramTmp] run function sbremake:utils/holograms/magic

execute as @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable] run scoreboard players operation @s health -= #4 const
damage @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable,limit=1] 0 sbremake:magic_damage by @p

tag @a add magicDamage
scoreboard players set @a magicDamage 4
execute as @e[tag=hologramTmp,tag=!newDmg] run function sbremake:utils/damages/magic_damage
tag @a remove magicDamage

scoreboard players set @a solMaxDmg 40

execute as @e[tag=hologramTmp,tag=!invulnerable] run attribute @s generic.knockback_resistance base set 0
tag @e[tag=hologramTmp] remove hologramTmp