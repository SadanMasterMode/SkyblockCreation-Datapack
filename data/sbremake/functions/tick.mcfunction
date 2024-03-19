# Raycasts
execute as @a at @s anchored eyes run function sbremake:tick/raycasts

# Function Calls
execute as @e at @s run function sbremake:tick/contextial/as-all-entities
execute as @a run function sbremake:tick/contextial/as_all_players
execute if score #inWorld fakePlayers matches 1 if score #lag-reduction fakePlayers matches 0 as 8360a17e-8886-4bdb-8929-d271f0c4a4cc at @s run function sbremake:world/dh/tick
execute if score #inWorld fakePlayers matches 1 if score #lag-reduction fakePlayers matches 0 in overworld run function sbremake:world/dwindler/tick
execute if score #inWorld fakePlayers matches 1 if score #lag-reduction fakePlayers matches 0 if entity @a[predicate=sbremake:world/mercurius/dimension_check] run function sbremake:world/dreamworld/tick

# Actionbar
execute as @a[predicate=sbremake:items/tick/actionbar] run function sbremake:tick/actionbar

# Misc
execute store result score @a[limit=1] healthMod run scoreboard players get @a[limit=1] playerHealth
execute store result score @a[limit=1] healthVis run scoreboard players operation @a[limit=1] healthMod *= #5 const
execute at @a as @e[distance=50..,tag=projectile] run function sbremake:tick/raycast_kill

execute as @a[scores={dmgDealt=1..},tag=inDwindlerBoss] run function sbremake:utils/sol_max_dmg

scoreboard players add @e[type=vex,tag=!spectator,tag=!mercuriusHeal] life 1
kill @e[type=vex,scores={life=300..}]

execute as @e[type=area_effect_cloud] store result entity @s Air short 1 run time query gametime

# Left Click
execute at @a run tp 23659f9b-55c6-4089-908e-1cc6a38c3584 ~ ~-1 ~
execute store result entity 23659f9b-55c6-4089-908e-1cc6a38c3584 Air short 1 run time query gametime
execute if entity @a[predicate=!sbremake:misc/holding-lc,limit=1] as 23659f9b-55c6-4089-908e-1cc6a38c3584 on passengers run kill @s
execute if entity @a[predicate=!sbremake:misc/holding-lc,limit=1] as 23659f9b-55c6-4089-908e-1cc6a38c3584 run kill @s

# Objective System
execute at @a facing entity @e[tag=objective,limit=1] eyes positioned ^ ^3 ^2 run tp 38b904a1-5164-476e-b23d-e86630ed0445 ~ ~ ~
execute at 38b904a1-5164-476e-b23d-e86630ed0445 run particle minecraft:composter ~ ~ ~ 0 0 0 3 0 normal

# Items
function sbremake:items/mage/frozen-scythe/tick