# Raycasts
execute as @a at @s anchored eyes run function sbremake:tick/raycasts

# Function Calls
execute as @e[tag=!spectator,type=#sbremake:spectators] run function sbremake:utils/spectator
execute as @a run function sbremake:tick/contextial/as_all_players
execute if score #inWorld fakePlayers matches 1 if score #lag-reduction fakePlayers matches 0 run function sbremake:world/dh/tick
execute if score #inWorld fakePlayers matches 1 if score #lag-reduction fakePlayers matches 0 run function sbremake:world/dwindler/tick
execute if score #inWorld fakePlayers matches 1 if score #lag-reduction fakePlayers matches 0 if entity @a[predicate=sbremake:world/mercurius/dimension_check] run function sbremake:world/dreamworld/tick

# Invisible Minecarts
execute as @e[type=#minecraft:minecarts,tag=!invisible_minecart] run function sbremake:utils/invisible_minecarts

# Mob Nametags
execute as @e[tag=!maxHealth,type=!#sbremake:spectators] run function sbremake:nametags/max_health 
execute as @e[tag=!noName,type=!#sbremake:spectators] in minecraft:overworld run function sbremake:nametags/main

# Actionbar
execute as @a[predicate=sbremake:items/tick/actionbar] run function sbremake:tick/actionbar

# Misc
execute store result score @a[limit=1] healthMod run scoreboard players get @a[limit=1] playerHealth
execute store result score @a[limit=1] healthVis run scoreboard players operation @a[limit=1] healthMod *= #5 const
execute at @a as @e[distance=50..,tag=projectile] run function sbremake:tick/raycast_kill

execute as @e[tag=float] run function sbremake:utils/item_float
execute as @a[scores={solMaxDmg=1..},tag=!inDwindlerBoss] run function sbremake:utils/sol_max_dmg
execute as @a[scores={dmgDealt=1..},tag=inDwindlerBoss] run function sbremake:utils/sol_max_dmg
execute as @e[tag=damageHologram] at @s run function sbremake:tick/damage_hologram
execute as @e[scores={health=..0},tag=!not_kill,tag=newDmg,type=!#sbremake:spectators] run kill @s

# Left Click
execute at @a run tp 23659f9b-55c6-4089-908e-1cc6a38c3584 ~ ~-1 ~
execute store result entity 23659f9b-55c6-4089-908e-1cc6a38c3584 Air short 1 run time query gametime
execute if entity @a[predicate=!sbremake:misc/holding-lc,limit=1] as 23659f9b-55c6-4089-908e-1cc6a38c3584 on passengers run kill @s
execute if entity @a[predicate=!sbremake:misc/holding-lc,limit=1] as 23659f9b-55c6-4089-908e-1cc6a38c3584 run kill @s

# Objective System
execute at @a facing entity @e[tag=objective,limit=1] eyes positioned ^ ^3 ^2 run tp 38b904a1-5164-476e-b23d-e86630ed0445 ~ ~ ~
execute at 38b904a1-5164-476e-b23d-e86630ed0445 run particle minecraft:composter ~ ~ ~ 0 0 0 3 0 normal