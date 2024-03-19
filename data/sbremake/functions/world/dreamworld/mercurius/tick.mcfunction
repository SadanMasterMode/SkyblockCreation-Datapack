# Particles
execute as @e[type=interaction,tag=emperorHeart,scores={life=..0}] run scoreboard players add #2 life 1
execute as @e[type=marker,tag=emperorHeartParticle,scores={life=60..}] run scoreboard players reset @s life
execute as @e[type=marker,tag=emperorHeartParticle,scores={life=..0}] run scoreboard players add #2 life 1
execute at @e[type=interaction,tag=emperorHeart] if score #2 life matches 1.. run function sbremake:world/dreamworld/mercurius/tick/particles

execute if score #2 life matches 61.. run function sbremake:world/dreamworld/mercurius/boss_spawn

# Spawning
execute as e39dc353-0355-4517-b803-00dee36ca116 at @s run tp @s ~ ~ ~ facing entity @p feet

execute as e39dc353-0355-4517-b803-00dee36ca116 on attacker run scoreboard players operation @s dmgDealtResis /= #10 const
execute as e39dc353-0355-4517-b803-00dee36ca116 on attacker run scoreboard players operation e39dc353-0355-4517-b803-00dee36ca116 health -= @s dmgDealtResis
execute as e39dc353-0355-4517-b803-00dee36ca116 on attacker run scoreboard players reset @s dmgDealtResis
attribute e39dc353-0355-4517-b803-00dee36ca116 generic.knockback_resistance base set 100

## Attacks
execute as e39dc353-0355-4517-b803-00dee36ca116 if entity @a[tag=mercuriusBoss] run scoreboard players add @s[tag=!mercuriusShield] cd 1
execute as e39dc353-0355-4517-b803-00dee36ca116 run scoreboard players reset @s[tag=mercuriusShield] cd

execute as e39dc353-0355-4517-b803-00dee36ca116 if score @s[scores={cd=140..},tag=!mercuriusShield] phase matches 0 at @s run function sbremake:world/dreamworld/mercurius/attack
execute as e39dc353-0355-4517-b803-00dee36ca116 if score @s[scores={cd=120..},tag=!mercuriusShield] phase matches 1 at @s run function sbremake:world/dreamworld/mercurius/attack
execute as e39dc353-0355-4517-b803-00dee36ca116 if score @s[scores={cd=100..},tag=!mercuriusShield] phase matches 2 at @s run function sbremake:world/dreamworld/mercurius/attack
execute as e39dc353-0355-4517-b803-00dee36ca116 if score @s[scores={cd=80..},tag=!mercuriusShield] phase matches 3 at @s run function sbremake:world/dreamworld/mercurius/attack
execute as e39dc353-0355-4517-b803-00dee36ca116 if score @s[scores={cd=60..},tag=!mercuriusShield] phase matches 4 at @s run function sbremake:world/dreamworld/mercurius/attack

## Fang Attack

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
execute as e39dc353-0355-4517-b803-00dee36ca116 at @s if score @s health matches ..20000 if score @s phase matches 0 in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/attacks/worldborder
execute as e39dc353-0355-4517-b803-00dee36ca116 at @s if score @s health matches ..15000 if score @s phase matches 1 in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/attacks/worldborder
execute as e39dc353-0355-4517-b803-00dee36ca116 at @s if score @s health matches ..10000 if score @s phase matches 2 in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/attacks/worldborder
execute as e39dc353-0355-4517-b803-00dee36ca116 at @s if score @s health matches ..5000 if score @s phase matches 3 in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/attacks/worldborder
execute as @e[tag=mercuriusShield] at @s unless entity @e[tag=borderOrb] run function sbremake:world/dreamworld/mercurius/attacks/worldborder/tick

### Orbs
execute as @e[tag=borderOrb] run function sbremake:world/dreamworld/mercurius/attacks/orbs/tick
execute if entity @e[tag=borderOrb,limit=1] run function sbremake:world/dreamworld/mercurius/attacks/orbs/tick_2
execute at @e[tag=cryingOrbIcicle,limit=1] unless block ~ ~2.5 ~ #sbremake:items/air run kill @e[tag=cryingOrbIcicle]
execute unless entity @e[tag=summon_orb] run schedule clear sbremake:world/dreamworld/mercurius/attacks/orbs/summon

## Totems
execute as @e[tag=stoner] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=interaction,tag=mercuriusTotem,nbt={attack:{}}] at @s run function sbremake:world/dreamworld/mercurius/attacks/totem/totem_death
execute as @e[type=area_effect_cloud,tag=healingTotem] unless score e39dc353-0355-4517-b803-00dee36ca116 health matches 25000.. run scoreboard players add e39dc353-0355-4517-b803-00dee36ca116 health 10
scoreboard players set #power fakePlayers 0
execute if entity @e[tag=strengthTotem,type=area_effect_cloud,limit=1] at @e[tag=mercuriusSummon] run particle crit ~ ~ ~ 0.5 0.5 0.5 0 1 normal
execute as @e[tag=strengthTotem,type=area_effect_cloud] run scoreboard players add #power fakePlayers 1
execute as @e[tag=mercuriusSummon] run function sbremake:world/dreamworld/mercurius/attacks/totem/summon-power
execute as @e[tag=manaTotem,type=text_display] run function sbremake:world/dreamworld/mercurius/attacks/totem/mana-orb

## Crush Attack
execute at @e[tag=mercuriusCrush] as @a[distance=..1] run damage @s 16 mob_attack
execute at @e[tag=mercuriusCrush] as @a[distance=..1] at @s as @e[tag=mercuriusCrush,distance=..1] on passengers run kill @s
execute at @e[tag=mercuriusCrush] as @a[distance=..1] at @s as @e[tag=mercuriusCrush,distance=..1] run kill @s
scoreboard players add @e[tag=mercuriusCrush] life 1
execute as @e[tag=mercuriusCrush,scores={life=10..}] at @s run tp @s ~ ~-0.6 ~
execute as @e[tag=mercuriusCrush] store result entity @s Air short 1 run time query gametime
execute as @e[tag=mercuriusCrush] at @s unless block ~ ~1 ~ #sbremake:items/air on passengers run kill @s
execute as @e[tag=mercuriusCrush] at @s unless block ~ ~1 ~ #sbremake:items/air run kill @s

## Bombs
execute as @e[type=area_effect_cloud,tag=mercuriusBomb] at @s run function sbremake:world/dreamworld/mercurius/attacks/bombs/tick

# Misc
execute in sbremake:dreamworld at @a run kill @e[type=experience_orb]
execute as @a[scores={mercuriusDeaths=1..},tag=mercuriusBoss] at @s run function sbremake:world/dreamworld/mercurius/died
execute as e39dc353-0355-4517-b803-00dee36ca116 at @s if predicate sbremake:random/mercurius/mercurius_dialogue if entity @a[tag=mercuriusBoss] run function sbremake:world/dreamworld/mercurius/dialogue/fight-dialogue
execute store result entity adea8144-74b4-4cf8-8360-352f75495b4b Air short 1 run time query gametime

execute as e39dc353-0355-4517-b803-00dee36ca116 run team join player @s[scores={health=500..}]
execute as e39dc353-0355-4517-b803-00dee36ca116 run team leave @s[scores={health=..499},team=player,tag=!mercuriusShield]
attribute e39dc353-0355-4517-b803-00dee36ca116 generic.knockback_resistance base set 100
execute as e39dc353-0355-4517-b803-00dee36ca116 at @s if predicate sbremake:random/mercurius/vex if entity @a[tag=mercuriusBoss] unless entity @s[tag=mercuriusShield] run summon vex ~ ~ ~ {HandItems:[{id:"minecraft:wooden_axe",Count:1b}],HandDropChances:[0.00f,0.00f],DeathLootTable:"minecraft:empty",Health:6,Attributes:[{Name:"minecraft:generic.max_health",Base:6d}],Tags:["mercuriusVex","mercuriusSummon"]}

execute as e39dc353-0355-4517-b803-00dee36ca116 run tp @s[tag=mercuriusShield] 100.5 43 99.5
execute as @e[tag=mercuriusVex] store result entity @s BoundX int 1 run data get entity e39dc353-0355-4517-b803-00dee36ca116 Pos[0]
execute as @e[tag=mercuriusVex] store result entity @s BoundY int 1 run data get entity e39dc353-0355-4517-b803-00dee36ca116 Pos[1]
execute as @e[tag=mercuriusVex] store result entity @s BoundZ int 1 run data get entity e39dc353-0355-4517-b803-00dee36ca116 Pos[2]

effect give @a[predicate=sbremake:world/mercurius/dimension_check] saturation infinite 100 true
execute if entity @a[predicate=sbremake:world/mercurius/dimension_check] run gamerule naturalRegeneration false

# Death
execute as e39dc353-0355-4517-b803-00dee36ca116 at @s[scores={health=..0}] if score #killed-mercurius fakePlayers matches 0 run function sbremake:world/dreamworld/mercurius/death

execute positioned 100 46 99 as d2b78cba-da24-4822-9116-d4e6b9291fb5 if entity @s[distance=..0.05] if score #mercurius-death-2 fakePlayers matches 0 run function sbremake:world/dreamworld/mercurius/mercurius-death-2

execute positioned 100 46 99 as d2b78cba-da24-4822-9116-d4e6b9291fb5 if entity @s[distance=..0.05] if score #mercuriusDeath fakePlayers matches 0 run schedule function sbremake:world/dreamworld/mercurius/schedule-death 3s append

execute store result entity d2b78cba-da24-4822-9116-d4e6b9291fb5 Air short 1 run time query gametime
execute as d2b78cba-da24-4822-9116-d4e6b9291fb5 run scoreboard players add @s life 1
execute as d2b78cba-da24-4822-9116-d4e6b9291fb5 positioned 100 46 99 unless entity @s[distance=..0.05] at @s[scores={life=80..}] run tp @s ^ ^ ^0.1 facing 100 46 99
execute as d2b78cba-da24-4822-9116-d4e6b9291fb5 on passengers at @s run tp @s ~ ~ ~ ~10 ~ 