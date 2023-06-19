scoreboard players reset @a witherbornCD
scoreboard players set @a manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 2s append
title @a actionbar {"text":"A new Witherborn has spawned!","color":"dark_gray"}
execute if score @a[limit=1] witherbornCount matches 0 at @a run summon area_effect_cloud ~ ~-3.5 ~ {Passengers:[{id:"minecraft:wither",Invul:1000,NoAI:1b,CustomName:'[{"text":"Dinnerbone"}]',Tags:["witherborn","mob-1","spectator"],Silent:1b,Invulnerable:1b,NoGravity:1b,CustomNameVisible:0b,DeathLootTable:"minecraft:empty"}],Tags:["witherborn","mob-1","spectator"],NoGravity:1b,Invulnerable:1b,Radius:0,Duration:2147483647}
execute if score @a[limit=1] witherbornCount matches 1 at @a run summon area_effect_cloud ~ ~-3.5 ~ {Passengers:[{id:"minecraft:wither",Invul:1000,NoAI:1b,CustomName:'[{"text":"Dinnerbone"}]',Tags:["witherborn","mob-2","spectator"],Silent:1b,Invulnerable:1b,NoGravity:1b,CustomNameVisible:0b,DeathLootTable:"minecraft:empty"}],Tags:["witherborn","mob-2","spectator"],NoGravity:1b,Invulnerable:1b,Radius:0,Duration:2147483647}
scoreboard players add @a witherbornCount 1