advancement revoke @s only sbremake:items/archer/juju/left-click
advancement revoke @s only sbremake:items/archer/juju/right-click

execute positioned 0.0 0 0.0 run summon marker ^ ^ ^2 {Tags:["direction"]}

execute anchored eyes positioned ^ ^ ^0.5 run summon arrow ~ ~ ~ {Tags:["projectile","spectator","juju"],damage:0,crit:0b,pickup:0b,PierceLevel:100}

data modify entity @e[type=arrow,tag=projectile,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

tag @e[tag=projectile] remove projectile
kill @e[tag=direction]