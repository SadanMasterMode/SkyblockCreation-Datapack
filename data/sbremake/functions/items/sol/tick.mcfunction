execute if entity 07c041fc-445a-41ed-ad7e-090b5219235d run schedule function sbremake:items/sol/particles 4t append
execute if entity 48782dea-21f1-43a5-b4cb-23fa86396cec run schedule function sbremake:items/sol/particles2 4t append

execute at @a run tp @e[tag=sol,type=area_effect_cloud] ~ ~ ~
execute as @e[tag=sol,type=area_effect_cloud] store result entity @s Air short 1 run time query gametime

execute as 07c041fc-445a-41ed-ad7e-090b5219235d at @s if block ~ ~ ~ air run tp @s[tag=!noMovement] ^ ^ ^-0.2
execute as 48782dea-21f1-43a5-b4cb-23fa86396cec at @s if block ~ ~ ~ air run tp @s[tag=!noMovement] ^ ^ ^-0.2
execute as 07c041fc-445a-41ed-ad7e-090b5219235d run scoreboard players add @s life 1
execute as 48782dea-21f1-43a5-b4cb-23fa86396cec run scoreboard players add @s life 1
execute as 07c041fc-445a-41ed-ad7e-090b5219235d if entity @s[scores={life=300..}] run function sbremake:items/sol/death-1
execute as 48782dea-21f1-43a5-b4cb-23fa86396cec if entity @s[scores={life=300..}] run function sbremake:items/sol/death-2

scoreboard players add @a[limit=1] lifeCD 1
scoreboard players add @a[limit=1] shadowCD 1

execute at @e[tag=lifeMark] run particle dust 0.169 1 0 1 ~ ~1.5 ~ 0.5 0.5 0.5 1 2 normal
execute at @e[tag=shadowMark] run particle dust 0.8 0 1 1 ~ ~1.5 ~ 0.5 0.5 0.5 1 2 normal

execute at 07c041fc-445a-41ed-ad7e-090b5219235d run effect give @e[distance=..3,tag=!undead,tag=!spectator] instant_health 1 0 true
execute at 07c041fc-445a-41ed-ad7e-090b5219235d run effect give @a[distance=..3] instant_health 1 0 true
execute at 07c041fc-445a-41ed-ad7e-090b5219235d run effect give @e[distance=..3,tag=undead] instant_damage 1 0 true 

execute as @e[tag=shadowMark] run schedule function sbremake:items/sol/dmg 10t append

execute at 07c041fc-445a-41ed-ad7e-090b5219235d run tag @e[distance=..3,tag=!spectator] add lifeMark
execute at 07c041fc-445a-41ed-ad7e-090b5219235d run tag @e[distance=3..] remove lifeMark
execute at 48782dea-21f1-43a5-b4cb-23fa86396cec run tag @e[distance=..3,tag=!spectator] add shadowMark
execute at 48782dea-21f1-43a5-b4cb-23fa86396cec run tag @e[distance=3..] remove shadowMark
execute unless entity 07c041fc-445a-41ed-ad7e-090b5219235d run tag @e[tag=lifeMark] remove lifeMark
execute unless entity 48782dea-21f1-43a5-b4cb-23fa86396cec run tag @e[tag=shadowMark] remove shadowMark

execute as @a[limit=1,nbt={SelectedItem:{id:"minecraft:red_tulip",Count:1b,tag:{display:{Name:'[{"text":"Staff of Life","italic":false,"color":"gold"}]'}}}}] at @s unless entity @e[tag=sol] run function sbremake:items/sol/summon

execute unless entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:red_tulip",Count:1b,tag:{display:{Name:'[{"text":"Staff of Life","italic":false,"color":"gold"}]'}}}}] run kill @e[tag=sol]

scoreboard players reset @a[limit=1] solRC