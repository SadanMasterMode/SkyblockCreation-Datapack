tag @s add hologramTmp

function sbremake:utils/damage-calc/melee-calc

scoreboard players operation @a damageHologram = DamageCalc.out fakePlayers
execute at @s run function sbremake:utils/holograms/melee

execute as @s[tag=newDmg,tag=!invulnerable] run scoreboard players operation @s health -= DamageCalc.out fakePlayers
damage @s[tag=newDmg,tag=!invulnerable] 0 sbremake:magic_damage by @a[limit=1]

tag @a add magicDamage
scoreboard players operation @a magicDamage = DamageCalc.out fakePlayers
execute as @s[tag=!newDmg] run function sbremake:utils/damages/magic_damage
tag @a remove magicDamage

execute store result score @a solMaxDmg run scoreboard players operation DamageCalc.out fakePlayers *= #10 const

tag @e[type=arrow,tag=juju,limit=1,sort=nearest] add kill-me

tag @s remove hologramTmp