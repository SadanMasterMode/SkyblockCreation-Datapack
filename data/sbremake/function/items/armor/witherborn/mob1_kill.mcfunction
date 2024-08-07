execute at fccff781-547f-498c-b424-1297596e1d57 run particle explosion ~ ~3.5 ~ 0 0 0 0 1 normal

tag @s add hologramTmp
attribute @s generic.knockback_resistance base set 100

scoreboard players set @a damageHologram 360
execute at @s run function sbremake:utils/holograms/magic

execute as @s[tag=newDmg,tag=!invulnerable] run scoreboard players operation @s health -= #36 const
damage @s[tag=newDmg,tag=!invulnerable] 0 sbremake:magic_damage by @a[limit=1]

tag @a add magicDamage
scoreboard players set @a magicDamage 360
execute as @s[tag=!newDmg] run function sbremake:utils/damages/magic_damage
tag @a remove magicDamage

scoreboard players set @a solMaxDmg 360

attribute @s generic.knockback_resistance base set 0
tag @s remove hologramTmp

tellraw @a [{"text": "Your Witherborn hit ","color": "gray"},{"text": "1","color": "red"},{"text": " enemy for "},{"text": "36","color": "red"},{"text": " damage.","color": "gray"}]

# Kill witherborn
execute as fccff781-547f-498c-b424-1297596e1d57 on passengers run tp @s ~ ~-1000 ~
execute as fccff781-547f-498c-b424-1297596e1d57 on passengers run kill @s
execute as fccff781-547f-498c-b424-1297596e1d57 run tp @s ~ ~-1000 ~
execute as fccff781-547f-498c-b424-1297596e1d57 run kill @s

scoreboard players remove @a witherbornCount 1
kill 638e122c-b657-4d30-a679-7358a2d5f184