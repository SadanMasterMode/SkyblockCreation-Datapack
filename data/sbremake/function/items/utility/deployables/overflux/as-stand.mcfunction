execute at @s if score #overflux-orb-bob fakePlayers matches 1..4 run tp @s ~ ~0.02 ~
execute at @s if score #overflux-orb-bob fakePlayers matches 5..25 run tp @s ~ ~0.06 ~
execute at @s if score #overflux-orb-bob fakePlayers matches 26..30 run tp @s ~ ~0.035 ~
execute at @s if score #overflux-orb-bob fakePlayers matches 31..35 run tp @s ~ ~0.02 ~

execute at @s if score #overflux-orb-bob fakePlayers matches 40..44 run tp @s ~ ~-0.02 ~
execute at @s if score #overflux-orb-bob fakePlayers matches 45..65 run tp @s ~ ~-0.06 ~
execute at @s if score #overflux-orb-bob fakePlayers matches 66..70 run tp @s ~ ~-0.035 ~
execute at @s if score #overflux-orb-bob fakePlayers matches 71..75 run tp @s ~ ~-0.02 ~
execute at @s run tp @s ~ ~ ~ ~-20 ~

execute at @s run particle dust{color:[0.714,0.0,0.0],scale:1} ^ ^-0.2 ^0.5 0 0 0 0 1 normal