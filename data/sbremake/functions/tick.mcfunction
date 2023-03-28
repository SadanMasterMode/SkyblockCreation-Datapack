# Raycasts
execute as @a at @s anchored eyes run function sbremake:tick/raycasts

# Function Calls
execute as @e[tag=!spectator] run function sbremake:utils/spectator
execute as @a run function sbremake:tick/contextial/as_all_players 
function sbremake:utils/undead

# Invisible Minecarts
execute as @e[type=#minecraft:minecarts,tag=!invisible_minecart] run function sbremake:utils/invisible_minecarts

# Mob Nametags
execute as @e[tag=!maxHealth,tag=!spectator] run function sbremake:nametags/max_health
execute as @e[tag=!boss,tag=!newDmg,tag=!spectator] store result score @s health run data get entity @s Health
execute as @e[tag=!noName,tag=!spectator,type=!#sbremake:never-detect] in minecraft:overworld run function sbremake:nametags/main

# Actionbar
execute as @a[predicate=sbremake:items/tick/actionbar] run function sbremake:tick/actionbar

# Misc
execute store result score @a[limit=1] healthMod run scoreboard players get @a[limit=1] playerHealth
execute store result score @a[limit=1] healthVis run scoreboard players operation @a[limit=1] healthMod *= #5 const
execute at @a as @e[distance=50..,tag=spectator] run function sbremake:tick/raycast_kill

execute as @e[tag=float] run function sbremake:utils/item_float
execute as @a[scores={solMaxDmg=1..},tag=!inDwindlerBoss] run function sbremake:utils/sol_max_dmg
execute as @a[scores={dmgDealt=1..},tag=inDwindlerBoss] run function sbremake:utils/sol_max_dmg
execute as @e[tag=damageHologram] at @s run function sbremake:tick/damage_hologram
execute as @e[scores={health=..0},tag=!spectator,tag=!not_kill,tag=newDmg,type=!#sbremake:never-detect] run kill @s

# Objectives
execute at @a facing entity @e[tag=objective,limit=1,sort=random] eyes positioned ^ ^3 ^2 run tp 38b904a1-5164-476e-b23d-e86630ed0445 ~ ~ ~
execute at 38b904a1-5164-476e-b23d-e86630ed0445 run particle minecraft:composter ~ ~ ~ 0 0 0 3 0 normal