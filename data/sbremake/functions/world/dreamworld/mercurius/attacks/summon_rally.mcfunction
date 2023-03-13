summon vindicator ~ ~ ~ {HandItems:[{id:"minecraft:diamond_axe",Count:1b}],HandDropChances:[0.00f,0.00f],DeathLootTable:"minecraft:empty",Health:24,Attributes:[{Name:"minecraft:generic.max_health",Base:24d}],Tags:["mercuriusVindicator","mercuriusSummon"]}
summon pillager ~ ~ ~ {HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b}}],HandDropChances:[0.00f,0.00f],DeathLootTable:"minecraft:empty",Health:24,Attributes:[{Name:"minecraft:generic.max_health",Base:24d}],Tags:["mercuriusPillager","mercuriusSummon"]}

execute in sbremake:dreamworld run spreadplayers ~ ~ 5 5 false @e[tag=mercuriusSummon,type=!vex,type=!evoker_fangs,type=!evoker,tag=!teleported]
execute as @e[tag=mercuriusSummon,type=!vex,type=!evoker_fangs,type=!evoker,tag=!teleported] store result entity @s Pos[1] double 1 run data get entity @e[tag=mercurius,limit=1] Pos[1]
tag @e[tag=mercuriusSummon,type=!vex,type=!evoker_fangs,type=!evoker,tag=!teleported] add teleported

execute at @a run playsound entity.evoker.prepare_wololo master @a ~ ~ ~

tellraw @a [{"text": "The Emperor prepared a rally of Illagers!","color": "red"}]