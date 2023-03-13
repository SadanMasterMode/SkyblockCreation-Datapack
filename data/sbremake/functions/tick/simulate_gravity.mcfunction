scoreboard players add @s life 1
tp @s[type=armor_stand,scores={life=1..5}] ~ ~-0.05 ~
tp @s[type=armor_stand,scores={life=6..11}] ~ ~-0.3 ~
tp @s[type=armor_stand,scores={life=12..21}] ~ ~-0.4 ~
tp @s[type=armor_stand,scores={life=22..32}] ~ ~-0.5 ~
tp @s[type=armor_stand,scores={life=33..43}] ~ ~-0.6 ~
tp @s[type=armor_stand,scores={life=44..54}] ~ ~-0.9 ~
tp @s[type=armor_stand,scores={life=55..}] ~ ~-1.6 ~
kill @s[scores={life=60..}]

kill @s[type=block_display,predicate=sbremake:items/spoon/passenger]

execute unless block ~ ~1.5 ~ #sbremake:items/air on passengers run kill @s
execute unless block ~ ~1.5 ~ #sbremake:items/air run kill @s