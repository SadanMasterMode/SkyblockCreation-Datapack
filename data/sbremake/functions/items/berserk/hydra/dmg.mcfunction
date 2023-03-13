schedule clear sbremake:items/berserk/hydra/dmg
execute as @e[tag=hydraDmg] run tag @s add hydraTmp

execute as @e[tag=hydraTmp,tag=dwindler] store result score @s solMaxDmg3 run scoreboard players get @p solMaxDmg3
execute as @e[tag=hydraTmp,tag=dwindler] store result score @s healthVis run scoreboard players get @s health
execute as @e[tag=hydraTmp,tag=dwindler] run scoreboard players operation @s healthVis -= @s solMaxDmg3
execute as @e[tag=hydraTmp,tag=dwindler] store result score @s health run scoreboard players get @s healthVis
execute as @e[tag=hydraTmp,tag=dwindler] at @s run effect give @s instant_damage 1 255 true

execute as @e[tag=hydraTmp,tag=!dwindler] store result score @s solMaxDmg3 run scoreboard players get @p solMaxDmg3
execute as @e[tag=hydraTmp,tag=!dwindler] store result score @s healthVis run data get entity @s Health
execute as @e[tag=hydraTmp,tag=!dwindler] run scoreboard players operation @s healthVis -= @s solMaxDmg3
execute as @e[tag=hydraTmp,tag=!dwindler] store result entity @s Health float 1 run scoreboard players get @s healthVis
execute as @e[tag=hydraTmp,tag=!undead,tag=!dwindler] at @s run effect give @s instant_damage 1 255 true
execute as @e[tag=hydraTmp,tag=undead,tag=!dwindler] at @s run effect give @s instant_health 1 255 true

execute at @e[tag=hydraTmp] run summon armor_stand ~ ~-10 ~ {CustomName:'{"text": "0","color": "gray"}',Tags:["damageHologram","spectator"],NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Invulnerable:1b,Marker:1b}
setblock 0 2 0 air
execute if score @p solMaxDmg3 matches 1.. run setblock 0 2 0 oak_sign{Text2:'{"score":{"name":"@p","objective":"solMaxDmg3"},"color":"gray"}'}
execute if score @p solMaxDmg3 matches 0 run setblock 0 2 0 oak_sign{Text2:'{"text": "0","color":"gray"}'}
data modify entity @e[tag=damageHologram,tag=!hydraTeleported,limit=1] CustomName set from block 0 2 0 Text2
data merge entity @e[tag=damageHologram,tag=!hydraTeleported,limit=1] {CustomNameVisible:1b}
setblock 0 2 0 air
execute at @e[tag=hydraTmp] run spreadplayers ~ ~ 0.0 1.0 false @e[tag=damageHologram,tag=!hydraTeleported]
execute as @e[tag=damageHologram,tag=!hydraTeleported] run data modify entity @s Pos[1] set from entity @e[tag=hydraTmp,limit=1] Pos[1]
execute as @e[tag=damageHologram,tag=!hydraTeleported] at @s run tp @s ~ ~1 ~
tag @e[tag=damageHologram,tag=!hydraTeleported] add hydraTeleported 

execute as @e[tag=hydraTmp] run tag @s remove hydraTmp
tag @s add hydraDmged