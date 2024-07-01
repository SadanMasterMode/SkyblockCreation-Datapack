tellraw @a [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Savor your final breath of the life you cling to so dearly!","color": "white"}]
execute in sbremake:dreamworld at @a run playsound entity.evoker.ambient master @a ~ ~ ~
tag @a remove mercuriusSpawn
tag @a add mercuriusBoss
tag e39dc353-0355-4517-b803-00dee36ca116 remove invulnerable
execute in sbremake:dreamworld run fill 89 41 100 87 44 98 air replace barrier
execute in sbremake:dreamworld run setblock 88 41 99 smooth_stone_slab
data merge entity e39dc353-0355-4517-b803-00dee36ca116 {Invulnerable:0b,NoAI:0b}

title @a times 0 60 0
title @a title [{"text": "Lord Emperor Mercurius","color": "dark_purple"}]
title @a subtitle [{"text": "Controlling Lord of the Weak","color": "gold"}]

function sbremake:world/dreamworld/mercurius/attacks/teleport

scoreboard players reset * dmgDealtResis