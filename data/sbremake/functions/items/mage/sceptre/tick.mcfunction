execute anchored eyes as @r at @s if entity @s[scores={sceptreRC=1..},nbt={SelectedItem:{id:"minecraft:allium",Count:1b,tag:{display:{Name:'[{"text":"Spirit Sceptre","italic":false,"color":"gold"}]'}}}}] if entity @p[scores={mana=..124}] run function sbremake:items/mage/sceptre/mana

execute anchored eyes as @r at @s if entity @s[scores={sceptreRC=1..},nbt={SelectedItem:{id:"minecraft:allium",Count:1b,tag:{display:{Name:'[{"text":"Spirit Sceptre","italic":false,"color":"gold"}]'}}}}] if entity @p[scores={mana=125..}] run function sbremake:items/mage/sceptre/main

execute as @e[tag=sceptre] at @s unless block ~ ~ ~ air run function sbremake:items/mage/sceptre/death
execute at @e[tag=kill] as @e[distance=..3,tag=!spectator] run function sbremake:items/mage/sceptre/dmg
execute as @e[tag=kill] run kill @s
scoreboard players reset @a[scores={sceptreRC=1..}] sceptreRC

execute as @e[tag=sceptre] at @s run tp @s ^ ^ ^1 facing entity 8b972846-ccec-4466-b60a-ff68a0bcecc6

execute at @p run tag @e[tag=sceptre,distance=50..] add sceptreKill
execute as @e[tag=sceptreKill] at @s run tp @s ~ ~-100 ~
execute as @e[tag=sceptreKill] run kill @s