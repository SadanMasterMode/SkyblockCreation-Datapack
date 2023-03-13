scoreboard players reset @p witherbornCD
scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 2s append
title @a actionbar {"text":"A new Witherborn has spawned!","color":"dark_gray"}
execute if score @p witherbornCount matches 0 at @p run summon wither ~ ~-3.5 ~ {Invul:1000,NoAI:1b,CustomName:'[{"text":"Dinnerbone"}]',Tags:["witherborn","mob1","spectator"],Silent:1b,Invulnerable:1b,NoGravity:1b,CustomNameVisible:0b}
execute if score @p witherbornCount matches 1 at @p run summon wither ~ ~-3.5 ~ {Invul:1000,NoAI:1b,CustomName:'[{"text":"Dinnerbone"}]',Tags:["witherborn","mob2","spectator"],Silent:1b,Invulnerable:1b,NoGravity:1b,CustomNameVisible:0b}
scoreboard players add @p witherbornCount 1