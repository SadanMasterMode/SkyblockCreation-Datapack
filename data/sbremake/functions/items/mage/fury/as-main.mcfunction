scoreboard players add @s life 1

execute at @s[scores={life=0..5}] run tp @s ^ ^ ^-0.1
execute at @s[scores={life=6..15}] run tp @s ^ ^ ^-0.35
execute at @s[scores={life=16..20}] run tp @s ^ ^ ^-0.5
execute at @s[scores={life=21..}] run tp @s ^ ^ ^-0.8
execute at @s[scores={life=40}] run function sbremake:items/mage/fury/final

particle smoke ~ ~ ~ 0 0 0 0 10 normal
execute at @s unless block ~ ~ ~ #sbremake:items/air run function sbremake:items/mage/fury/final