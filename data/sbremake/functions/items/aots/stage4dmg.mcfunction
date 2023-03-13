tag @s add hologramTmp

scoreboard players set @a damageHologram 4
execute at @s run function sbremake:utils/holograms/magic

execute as @s[tag=newDmg] run scoreboard players operation @s health -= #8 const
execute as @s[tag=newDmg] at @s run effect give @s instant_damage 1 255 true
execute as @s[tag=newDmg] at @s run effect give @s instant_health 1 255 true

tag @p add magicDamage
scoreboard players set @a magicDamage 4
attribute @s generic.knockback_resistance base set 100
execute as @s[tag=!newDmg] run function sbremake:utils/damages/magic_damage
attribute @s generic.knockback_resistance base set 0
tag @p remove magicDamage

scoreboard players set @a solMaxDmg 40

tag @s remove hologramTmp