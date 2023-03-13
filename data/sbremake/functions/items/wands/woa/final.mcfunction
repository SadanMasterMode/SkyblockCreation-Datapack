scoreboard players set @p ascendCharge 0
tp @e[tag=woa] ~ ~-100 ~
kill @e[tag=woa]
execute if score @p spookyMute matches 1 run scoreboard players set @p manaWarn 1
execute if score @p spookyMute matches 1 run schedule clear sbremake:manareset
execute if score @p spookyMute matches 1 run schedule function sbremake:manareset 1s append
execute if score @p spookyMute matches 1 run title @p actionbar [{"text":"Used","color":"aqua","bold":false},{"text":" Rock Bottom","color":"gold","bold":false},{"text":"! (0 Charges)","color":"aqua","bold":false}]
execute at @p run playsound minecraft:block.end_gateway.spawn master @p ~ ~ ~
execute as @p at @s run summon minecraft:iron_golem ~ ~10 ~ {Health:100,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["woa","lc","spectator"],ActiveEffects:[{Id:14,Duration:100000,Amplifier:-1,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100d}]}
scoreboard players set @p woaSuccess 0