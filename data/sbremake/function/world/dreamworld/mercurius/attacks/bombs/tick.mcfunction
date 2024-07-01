tag @s add tmp

execute if entity @s[tag=freezeBomb] run particle snowflake ~ ~ ~ 0.5 0.5 0.5 0.1 1 normal
execute if entity @s[tag=damageBomb] run particle crit ~ ~ ~ 0.5 0.5 0.5 0.2 3 normal
execute if entity @s[tag=enderBomb] run particle reverse_portal ~ ~ ~ 0.5 0.5 0.5 0.2 3 normal
execute if entity @s[tag=weaknessBomb] run particle dust{color:[0.478,0.0,0.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 0.2 3 normal
execute if entity @s[tag=manaBomb] run particle dust{color:[0.0,0.851,1.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 0.2 3 normal
execute if entity @s[tag=healthBomb] run particle dust{color:[0.0,1.0,0.318],scale:1} ~ ~ ~ 0.5 0.5 0.5 0.2 3 normal
execute if entity @s[tag=speedBomb] run particle dust{color:[0.898,1.0,0.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 0.2 3 normal

execute as @a[distance=..3] at @s run function sbremake:world/dreamworld/mercurius/attacks/bombs/activate

tag @s remove tmp