tp @e[tag=weakRail] ~ ~-100 ~
kill @e[tag=weakRail]
execute as @p at @s run summon minecraft:iron_golem ~ ~10 ~ {Health:100,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:[weakRail],ActiveEffects:[{Id:14,Duration:100000,Amplifier:-1,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100d}]}

scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @p actionbar {"text": "You don't have any charge in the gun!","color": "red"}

scoreboard players set @p weakRail 0
scoreboard players set @p weakRailCheck 0