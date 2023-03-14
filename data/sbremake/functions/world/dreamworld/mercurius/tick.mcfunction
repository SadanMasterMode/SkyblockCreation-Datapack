# Particles
execute as @e[type=interaction,tag=emperorHeart,scores={life=..0}] run scoreboard players add #2 life 1
execute as @e[type=marker,tag=emperorHeartParticle,scores={life=60..}] run scoreboard players reset @s life
execute as @e[type=marker,tag=emperorHeartParticle,scores={life=..0}] run scoreboard players add #2 life 1
execute at @e[type=interaction,tag=emperorHeart] if score #2 life matches 1.. run function sbremake:world/dreamworld/mercurius/tick/particles

execute if score #2 life matches 61.. run function sbremake:world/dreamworld/mercurius/boss_spawn

# Spawning
execute as @e[tag=mercurius] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=mercurius] on attacker run scoreboard players operation @s dmgDealtResis /= #10 const
execute as @e[tag=mercurius] on attacker run scoreboard players operation @e[tag=mercurius] health -= @s dmgDealtResis
execute as @e[tag=mercurius] on attacker run scoreboard players reset @s dmgDealtResis
attribute @e[tag=mercurius,limit=1] generic.knockback_resistance base set 100

## Attacks
execute as @e[tag=mercurius] if entity @a[tag=mercuriusBoss] run scoreboard players add @s cd 1
scoreboard players reset @e[tag=mercuriusShield] cd

execute as @e[tag=mercurius,scores={cd=140..},tag=!mercuriusShield] if score @s phase matches 0 at @s run function sbremake:world/dreamworld/mercurius/attack
execute as @e[tag=mercurius,scores={cd=120..},tag=!mercuriusShield] if score @s phase matches 1 at @s run function sbremake:world/dreamworld/mercurius/attack
execute as @e[tag=mercurius,scores={cd=100..},tag=!mercuriusShield] if score @s phase matches 2 at @s run function sbremake:world/dreamworld/mercurius/attack
execute as @e[tag=mercurius,scores={cd=80..},tag=!mercuriusShield] if score @s phase matches 3 at @s run function sbremake:world/dreamworld/mercurius/attack
execute as @e[tag=mercurius,scores={cd=60..},tag=!mercuriusShield] if score @s phase matches 4 at @s run function sbremake:world/dreamworld/mercurius/attack

## Fang Attack
execute as @e[tag=evokerLine] at @s facing entity @p feet run tp @s ^ ^ ^2
execute as @e[tag=evokerLine] at @s if block ~ ~-0.1 ~ #sbremake:items/air run tp @s ~ ~-0.5 ~

execute at @e[tag=evokerLine] facing entity @p feet run summon evoker_fangs ^ ^ ^ {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon"]}
execute if score @e[tag=mercurius,limit=1] phase matches 1.. at @e[tag=evokerLine] facing entity @p feet run summon evoker_fangs ^1 ^ ^ {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon"]}
execute if score @e[tag=mercurius,limit=1] phase matches 1.. at @e[tag=evokerLine] facing entity @p feet run summon evoker_fangs ^-1 ^ ^ {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon"]}
execute if score @e[tag=mercurius,limit=1] phase matches 2.. at @e[tag=evokerLine] facing entity @p feet run summon evoker_fangs ^ ^ ^1 {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon"]}
execute if score @e[tag=mercurius,limit=1] phase matches 2.. at @e[tag=evokerLine] facing entity @p feet run summon evoker_fangs ^1 ^ ^1 {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon"]}
execute if score @e[tag=mercurius,limit=1] phase matches 2.. at @e[tag=evokerLine] facing entity @p feet run summon evoker_fangs ^-1 ^ ^1 {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon"]}
execute if score @e[tag=mercurius,limit=1] phase matches 2.. at @e[tag=evokerLine] facing entity @p feet run summon evoker_fangs ^ ^ ^-1 {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon"]}
execute if score @e[tag=mercurius,limit=1] phase matches 2.. at @e[tag=evokerLine] facing entity @p feet run summon evoker_fangs ^1 ^ ^-1 {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon"]}
execute if score @e[tag=mercurius,limit=1] phase matches 2.. at @e[tag=evokerLine] facing entity @p feet run summon evoker_fangs ^-1 ^ ^-1 {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon"]}

execute at @a as @e[tag=evokerLine,distance=..1] run kill @s
## Summon Heal
scoreboard players set #mercuriusHeal count 0
execute as @e[tag=mercuriusHeal] run scoreboard players add #mercuriusHeal count 1
execute if entity @e[tag=mercuriusHeal] run scoreboard players add #mercuriusHeal life 1
execute unless entity @e[tag=mercuriusHeal] run scoreboard players reset #mercuriusHeal life
execute if score #mercuriusHeal life matches 200.. run function sbremake:world/dreamworld/mercurius/attacks/heal
effect give @e[tag=mercuriusHeal] glowing infinite 0 true
effect clear @e[tag=mercuriusSummon,tag=!mercuriusHeal]

## Worldborder + Phases
execute as @e[tag=mercurius] at @s if score @s health matches ..2000 if score @s phase matches 0 in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/attacks/worldborder
execute as @e[tag=mercurius] at @s if score @s health matches ..1500 if score @s phase matches 1 in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/attacks/worldborder
execute as @e[tag=mercurius] at @s if score @s health matches ..1000 if score @s phase matches 2 in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/attacks/worldborder
execute as @e[tag=mercurius] at @s if score @s health matches ..500 if score @s phase matches 3 in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/attacks/worldborder
execute as @e[tag=mercuriusShield] at @s unless entity @e[tag=borderOrb] run function sbremake:world/dreamworld/mercurius/attacks/worldborder/tick

### Orbs
execute as @e[tag=borderOrb] run function sbremake:world/dreamworld/mercurius/attacks/orbs/tick
execute if entity @e[tag=borderOrb,limit=1] run function sbremake:world/dreamworld/mercurius/attacks/orbs/tick_2
execute at @e[tag=cryingOrbIcicle,limit=1] unless block ~ ~2.5 ~ #sbremake:items/air run kill @e[tag=cryingOrbIcicle]

# Misc
execute in sbremake:dreamworld at @p run kill @e[type=experience_orb]