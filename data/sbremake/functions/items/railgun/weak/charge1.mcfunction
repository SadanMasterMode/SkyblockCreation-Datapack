execute as @p at @s run summon armor_stand ^ ^ ^1 {Tags:["weakRail1"],Invulnerable:1,NoGravity:1,Invisible:1,Marker:1b}
execute as @p at @s run summon armor_stand ^ ^ ^2 {Tags:["weakRail1"],Invulnerable:1,NoGravity:1,Invisible:1,Marker:1b}
execute as @e[tag=weakRail1,limit=1,sort=nearest] at @s unless entity @e[distance=..1,type=!armor_stand,type=!player,type=!item,type=!item_frame] unless score @p weakRailCheck matches 1 if score @p weakrailCharge matches 11.. run function sbremake:items/railgun/weak/charge2

schedule function sbremake:items/railgun/weak/delay 10t append