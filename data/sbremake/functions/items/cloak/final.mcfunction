tp @e[tag=wither-cloak] ~ ~-500 ~
kill @e[tag=wither-cloak]

attribute @s minecraft:generic.knockback_resistance base set 0
effect clear @s resistance
effect clear @s minecraft:weakness

tellraw @s ["",{"text":"Creeper Veil","color":"light_purple"},{"text":" De-Activated!","color":"red"}]
schedule clear sbremake:items/cloak/sound
tag @s remove inWitherCloak
scoreboard players reset @s rightClick