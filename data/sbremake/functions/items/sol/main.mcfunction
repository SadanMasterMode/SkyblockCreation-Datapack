scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @p actionbar [{"text":"Used","color":"aqua","bold":false},{"text":" Orb of Shadows","color":"gold","bold":false},{"text":"! (-"},{"score":{"name":"@p","objective":"percentageManaMod"},"color":"aqua","bold":false},{"text":" mana)","color":"aqua","bold":false}]
execute at @p run playsound minecraft:block.end_gateway.spawn master @p ~ ~ ~

execute as @p at @s anchored eyes unless entity @p[scores={mana=..149}] run summon armor_stand ^ ^ ^0.1 {Tags:["shadowOrb","spectator"],Invulnerable:1,NoGravity:1,Invisible:1}
execute as @e[tag=shadowOrb,tag=!facingPlayer] at @s run tp @s ~ ~ ~ facing entity @p eyes
tag @e[tag=shadowOrb,tag=!facingPlayer] add facingPlayer

scoreboard players operation @p mana -= @p percentageManaMod
scoreboard players reset @p shadowCD