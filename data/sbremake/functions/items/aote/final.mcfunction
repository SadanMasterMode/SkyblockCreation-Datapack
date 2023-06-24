execute at 8f1071f6-966b-424d-a35f-f24fb8ee568d run tp @p ~ ~ ~

schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-25 Mana (","color":"aqua"},{"text":"Instant Transmission","color":"gold"},{"text":")   ","color":"aqua"}]'
scoreboard players remove @a mana 25

execute at @p run kill 8f1071f6-966b-424d-a35f-f24fb8ee568d
execute at @p unless block ~ ~ ~ air run tp @p ~ ~1 ~
execute at @p run playsound entity.enderman.teleport master @p ~ ~ ~ 1 1 1

effect give @p speed 3 0 true

function sbremake:gravity