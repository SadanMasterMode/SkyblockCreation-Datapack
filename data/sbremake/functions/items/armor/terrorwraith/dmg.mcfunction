tag @s add hologramTmp
attribute @s generic.knockback_resistance base set 100
effect give @s minecraft:glowing 1 1 true

scoreboard players set @a damageHologram 8
execute at @s run function sbremake:utils/holograms/magic

scoreboard players operation @s[tag=newDmg,tag=!invulnerable] health -= #8 const
damage @s[tag=newDmg,tag=!invulnerable] 0 sbremake:magic_damage by @a[limit=1]

tag @a add magicDamage
scoreboard players set @a magicDamage 8
execute as @s[tag=!newDmg,tag=!invulnerable] run function sbremake:utils/damages/magic_damage
tag @a remove magicDamage

scoreboard players set @a solMaxDmg 10
scoreboard players remove @a mana 50

attribute @s generic.knockback_resistance base set 0
tag @s remove hologramTmp