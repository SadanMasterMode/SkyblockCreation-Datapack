execute as 48782dea-21f1-43a5-b4cb-23fa86396cec at @s run function sbremake:items/sol/as-shadow
execute as 07c041fc-445a-41ed-ad7e-090b5219235d at @s run function sbremake:items/sol/as-life

execute at @a run tp 8c0d6829-7757-4552-bac3-619ad4deebee ~ ~ ~
execute as 8c0d6829-7757-4552-bac3-619ad4deebee store result entity @s Air short 1 run time query gametime

scoreboard players add @a[scores={lifeCD=..239}] lifeCD 1
scoreboard players add @a[scores={shadowCD=..239}] shadowCD 1

execute at @e[tag=lifeMark] run particle dust 0.169 1 0 1 ~ ~1.5 ~ 0.5 0.5 0.5 1 2 normal
execute at @e[tag=shadowMark] run particle dust 0.8 0 1 1 ~ ~1.5 ~ 0.5 0.5 0.5 1 2 normal

execute if entity @e[tag=shadowMark,limit=1] run schedule function sbremake:items/sol/dmg 10t append
execute unless entity 07c041fc-445a-41ed-ad7e-090b5219235d run tag @e[tag=lifeMark] remove lifeMark
execute unless entity 48782dea-21f1-43a5-b4cb-23fa86396cec run tag @e[tag=shadowMark] remove shadowMark

execute as @a[predicate=sbremake:items/sol/holding-item] at @s unless entity 8c0d6829-7757-4552-bac3-619ad4deebee run function sbremake:items/sol/summon
execute as @a[predicate=!sbremake:items/sol/holding-item] run kill @e[tag=sol]