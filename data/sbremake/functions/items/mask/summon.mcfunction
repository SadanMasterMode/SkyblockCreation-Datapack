tp @e[tag=spooky] ~ ~-100 ~
kill @e[tag=spooky]
execute as @p at @s run summon minecraft:iron_golem ~ ~10 ~ {Health:100,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["spooky","lc","spectator"],ActiveEffects:[{Id:14,Duration:100000,Amplifier:-1,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100d}]}
scoreboard players set @p fallingEdge 1