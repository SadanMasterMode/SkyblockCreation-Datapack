execute as @p at @s run summon armor_stand ^ ^ ^17 {Tags:["weakRail9"],Invulnerable:1,NoGravity:1,Invisible:1,Marker:1b}
execute as @p at @s run summon armor_stand ^ ^ ^18 {Tags:["weakRail9"],Invulnerable:1,NoGravity:1,Invisible:1,Marker:1b}
execute as @e[tag=weakRail9,limit=1,sort=nearest] at @s unless entity @e[distance=..1,type=!armor_stand,type=!player,type=!item,type=!item_frame] unless score @p weakRailCheck matches 1 if score @p weakrailCharge matches 91.. run function sbremake:items/railgun/weak/charge10

schedule function sbremake:items/railgun/weak/delay 10t append