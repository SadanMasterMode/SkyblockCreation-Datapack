summon vex ~ ~ ~ {HandItems:[{id:"minecraft:iron_axe",Count:1b}],HandDropChances:[0.00f,0.00f],DeathLootTable:"minecraft:empty",Health:16,Attributes:[{Name:"minecraft:generic.max_health",Base:16d}],Tags:["mercuriusVex","mercuriusSummon"]}
summon vex ~ ~ ~ {HandItems:[{id:"minecraft:iron_axe",Count:1b}],HandDropChances:[0.00f,0.00f],DeathLootTable:"minecraft:empty",Health:16,Attributes:[{Name:"minecraft:generic.max_health",Base:16d}],Tags:["mercuriusVex","mercuriusSummon"]}
summon vex ~ ~ ~ {HandItems:[{id:"minecraft:iron_axe",Count:1b}],HandDropChances:[0.00f,0.00f],DeathLootTable:"minecraft:empty",Health:16,Attributes:[{Name:"minecraft:generic.max_health",Base:16d}],Tags:["mercuriusVex","mercuriusSummon"]}
execute as @e[tag=mercuriusVex] store result entity @s BoundX int 1 run data get entity @e[tag=mercurius,limit=1] Pos[0]
execute as @e[tag=mercuriusVex] store result entity @s BoundY int 1 run data get entity @e[tag=mercurius,limit=1] Pos[1]
execute as @e[tag=mercuriusVex] store result entity @s BoundZ int 1 run data get entity @e[tag=mercurius,limit=1] Pos[2]

execute at @a run playsound entity.evoker.prepare_summon master @a ~ ~ ~

tellraw @a [{"text": "The Emperor summoned a swarm of vexes!","color": "red"}]