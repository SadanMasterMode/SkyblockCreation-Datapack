tag @s add hologramTmp
attribute @s generic.knockback_resistance base set 100

function sbremake:utils/damage-calc/magic-calc

scoreboard players operation @a damageHologram = DamageCalc.out fakePlayers
function sbremake:utils/holograms/magic

execute as @s[tag=newDmg,tag=!invulnerable] run scoreboard players operation @s health -= DamageCalc.out fakePlayers
execute as @s[tag=newDmg,tag=!invulnerable] run damage @s 0 sbremake:magic_damage by @a[limit=1]

tag @a add magicDamage
scoreboard players operation @a magicDamage = DamageCalc.out fakePlayers
execute as @s[tag=!newDmg] run function sbremake:utils/damages/magic_damage
tag @a remove magicDamage

execute store result score @a solMaxDmg run scoreboard players operation DamageCalc.out fakePlayers *= #10 const

scoreboard players set @s moltenHT 15
attribute @s generic.knockback_resistance base set 0
tag @s remove hologramTmp