schedule clear sbremake:items/mage/fury/dmg

execute at @e[tag=furyMark] as @e[distance=..7,tag=!spectator] run tag @s add hologramTmp

scoreboard players set @a damageHologram 4
execute at @e[tag=hologramTmp] run function sbremake:utils/holograms/magic

execute as @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable] run scoreboard players operation @s health -= #4 const
execute as @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable] run attribute @s generic.knockback_resistance base set 100
damage @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable,limit=1] 0 magic by @p
execute as @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable] run attribute @s generic.knockback_resistance base set 0

tag @p add magicDamage
scoreboard players set @a magicDamage 4
execute as @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable] run attribute @s generic.knockback_resistance base set 100
execute as @e[tag=hologramTmp,tag=!newDmg] run function sbremake:utils/damages/magic_damage
execute as @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable] run attribute @s generic.knockback_resistance base set 0
tag @p remove magicDamage

scoreboard players set @a solMaxDmg 40

tag @e[tag=hologramTmp] remove hologramTmp