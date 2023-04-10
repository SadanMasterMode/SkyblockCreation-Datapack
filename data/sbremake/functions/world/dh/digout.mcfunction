tag @a add digAnim

playsound entity.generic.explode master @a[distance=..10] ~ ~ ~
particle explosion_emitter ~ ~1 ~ 0 0 0 0 10 force @a
particle large_smoke ~ ~2 ~ 0 0 0 0.2 1000 force @a

title @a[tag=!talkedToDH] times 10t 20t 10t
title @a[tag=!talkedToDH] subtitle [{"text": "Quest Unlocked","color": "dark_gray"}]
title @a[tag=!talkedToDH] title [{"text": "✯ ","color": "dark_red"},{"text": "Decayed Husk","color": "gold"},{"text": " ✯"}]

data modify entity @s CustomName set value '[{"text":"Decayed Husk","color":"gold"}]'
data modify entity @s CustomNameVisible set value 1b

tp @s ~ ~0.5 ~ facing entity @a[limit=1]
scoreboard players set @a decayedHuskDigout 0
tag @a add talkedToDH