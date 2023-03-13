schedule clear sbremake:items/mage/spoon/dmg
execute at @e[tag=moltenGuide] positioned ~ ~1 ~ as @e[distance=..2,tag=!spectator] unless score @s moltenHT matches 0..15 run tag @s add hologramTmp

scoreboard players set @a damageHologram 12
execute at @s[tag=hologramTmp] run function sbremake:utils/holograms/magic

execute as @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable] run scoreboard players operation @s health -= #12 const
execute as @e[tag=hologramTmp,tag=newDmg,tag=!invulnerable] run damage @s 0 magic by @p

tag @p add magicDamage
scoreboard players set @a magicDamage 12
attribute @s generic.knockback_resistance base set 100
execute as @s[tag=!newDmg] run function sbremake:utils/damages/magic_damage
attribute @s generic.knockback_resistance base set 0
tag @p remove magicDamage

execute if entity @e[tag=hologramTmp] run scoreboard players set @p solMaxDmg 120
scoreboard players set @s[tag=hologramTmp] moltenHT 15

tag @e[tag=hologramTmp] remove hologramTmp