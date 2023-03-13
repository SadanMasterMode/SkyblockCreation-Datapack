tp @e[tag=sol] ~ ~-100 ~
kill @e[tag=sol]
scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @p actionbar [{"text":"Used","color":"aqua","bold":false},{"text":" Orb of Life","color":"gold","bold":false},{"text":"! (-"},{"score":{"name":"@p","objective":"percentageManaMod"},"color":"aqua","bold":false},{"text":" mana)","color":"aqua","bold":false}]
execute at @p run playsound minecraft:block.end_gateway.spawn master @p ~ ~ ~
execute as @p at @s run summon minecraft:iron_golem ~ ~10 ~ {Health:100,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["sol","lc","spectator"],ActiveEffects:[{Id:14,Duration:100000,Amplifier:-1,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100d}]}
scoreboard players set @p solSuccess 0

execute as @p at @s anchored eyes unless entity @p[scores={mana=..149}] run summon armor_stand ^ ^ ^0.1 {Tags:["lifeOrb","spectator"],Invulnerable:1,NoGravity:1,Invisible:1}
execute as @e[tag=lifeOrb,tag=!facingPlayer] at @s run tp @s ~ ~ ~ facing entity @p eyes
tag @e[tag=lifeOrb,tag=!facingPlayer] add facingPlayer

scoreboard players operation @p mana -= @p percentageManaMod
scoreboard players reset @p lifeCD