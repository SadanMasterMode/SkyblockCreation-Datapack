execute at @e[tag=aote1] unless entity @p[scores={mana=..25}] run tp @p ~ ~ ~

scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
execute unless entity @p[scores={mana=..25}] run title @a actionbar ["",{"text":"Used","color":"aqua"},{"text":" Instant Transmission","color":"gold"},{"text":"! (-25 \u270e Mana)","color":"aqua"}]
execute unless entity @p[scores={mana=..25}] run scoreboard players remove @p mana 25

execute at @p run kill @e[tag=aote1,limit=1,sort=nearest]
execute at @p unless block ~ ~ ~ air run tp @p ~ ~1 ~
execute at @p run playsound entity.enderman.teleport master @p ~ ~ ~ 1 1 1

effect give @p speed 3 0 true

function sbremake:gravity