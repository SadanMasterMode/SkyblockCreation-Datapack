tellraw @a [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Savor your final breath of the life you cling to so dearly!","color": "white"}]
execute in sbremake:dreamworld at @a run playsound entity.evoker.ambient master @a ~ ~ ~
tag @a remove mercuriusSpawn
tag @a add mercuriusBoss
tag @e[tag=mercurius] remove invulnerable
execute in sbremake:dreamworld run fill 89 41 100 87 44 98 air replace barrier
execute in sbremake:dreamworld run setblock 88 41 99 smooth_stone_slab
data merge entity @e[tag=mercurius,limit=1] {Invulnerable:0b,NoAI:0b}