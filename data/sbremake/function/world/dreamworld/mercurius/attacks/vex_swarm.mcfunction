summon vex ~ ~ ~ {HandItems:[{id:"minecraft:iron_axe",Count:1b}],HandDropChances:[0.00f,0.00f],DeathLootTable:"minecraft:empty",Health:16,Attributes:[{Name:"minecraft:generic.max_health",Base:16d}],Tags:["mercuriusVex","mercuriusSummon"]}
summon vex ~ ~ ~ {HandItems:[{id:"minecraft:iron_axe",Count:1b}],HandDropChances:[0.00f,0.00f],DeathLootTable:"minecraft:empty",Health:16,Attributes:[{Name:"minecraft:generic.max_health",Base:16d}],Tags:["mercuriusVex","mercuriusSummon"]}
summon vex ~ ~ ~ {HandItems:[{id:"minecraft:iron_axe",Count:1b}],HandDropChances:[0.00f,0.00f],DeathLootTable:"minecraft:empty",Health:16,Attributes:[{Name:"minecraft:generic.max_health",Base:16d}],Tags:["mercuriusVex","mercuriusSummon"]}

execute as @e[tag=mercuriusVex] store result entity @s BoundX int 1 run data get entity e39dc353-0355-4517-b803-00dee36ca116 Pos[0]
execute as @e[tag=mercuriusVex] store result entity @s BoundY int 1 run data get entity e39dc353-0355-4517-b803-00dee36ca116 Pos[1]
execute as @e[tag=mercuriusVex] store result entity @s BoundZ int 1 run data get entity e39dc353-0355-4517-b803-00dee36ca116 Pos[2]

execute at @a run playsound entity.evoker.prepare_summon master @a ~ ~ ~
execute at e39dc353-0355-4517-b803-00dee36ca116 run particle dust{color:[0.0,0.765,1.0],scale:1} ~ ~0.5 ~ 0.5 0.5 0.5 1 10 normal

function sbremake:utils/random_number
scoreboard players operation @a rand %= #2 const
tellraw @a[scores={rand=0}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Go Vexes, seek them out!","color": "white"}]
tellraw @a[scores={rand=1}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Vexes, swarm them!","color": "white"}]
playsound entity.evoker.ambient master @a