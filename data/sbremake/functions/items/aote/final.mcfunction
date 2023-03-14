execute at 8f1071f6-966b-424d-a35f-f24fb8ee568d run tp @p ~ ~ ~

scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @a actionbar ["",{"text":"Used","color":"aqua"},{"text":" Instant Transmission","color":"gold"},{"text":"! (-25 \u270e Mana)","color":"aqua"}]
scoreboard players remove @p mana 25

execute at @p run kill 8f1071f6-966b-424d-a35f-f24fb8ee568d
execute at @p unless block ~ ~ ~ air run tp @p ~ ~1 ~
execute at @p run playsound entity.enderman.teleport master @p ~ ~ ~ 1 1 1

effect give @p speed 3 0 true

function sbremake:gravity