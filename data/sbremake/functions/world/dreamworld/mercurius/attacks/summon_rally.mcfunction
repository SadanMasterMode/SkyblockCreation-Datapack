summon vindicator ~ ~ ~ {HandItems:[{id:"minecraft:diamond_axe",Count:1b}],HandDropChances:[0.00f,0.00f],DeathLootTable:"minecraft:empty",Health:24,Attributes:[{Name:"minecraft:generic.max_health",Base:24d}],Tags:["mercuriusVindicator","mercuriusSummon"]}
summon pillager ~ ~ ~ {HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b}}],HandDropChances:[0.00f,0.00f],DeathLootTable:"minecraft:empty",Health:20,Attributes:[{Name:"minecraft:generic.max_health",Base:20d}],Tags:["mercuriusPillager","mercuriusSummon"]}
summon pillager ~ ~ ~ {HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b}}],HandDropChances:[0.00f,0.00f],DeathLootTable:"minecraft:empty",Health:20,Attributes:[{Name:"minecraft:generic.max_health",Base:20d}],Tags:["mercuriusPillager","mercuriusSummon"]}


execute in sbremake:dreamworld run spreadplayers ~ ~ 5 5 false @e[tag=mercuriusSummon,type=!vex,type=!evoker_fangs,type=!evoker,tag=!teleported]
execute as @e[tag=mercuriusSummon,type=!vex,type=!evoker_fangs,type=!evoker,tag=!teleported] store result entity @s Pos[1] double 1 run data get entity e39dc353-0355-4517-b803-00dee36ca116 Pos[1]
tag @e[tag=mercuriusSummon,type=!vex,type=!evoker_fangs,type=!evoker,tag=!teleported] add teleported

execute at @a run playsound entity.evoker.prepare_wololo master @a ~ ~ ~
execute at e39dc353-0355-4517-b803-00dee36ca116 run particle dust 0.2 0 1 1 ~ ~0.5 ~ 0.5 0.5 0.5 1 10 normal

function sbremake:utils/random_number
scoreboard players operation @a rand %= #2 const
tellraw @a[scores={rand=0}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Gather my friends, we fight together!","color": "white"}]
tellraw @a[scores={rand=1}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Rip them to pieces!","color": "white"}]
playsound entity.evoker.ambient master @a