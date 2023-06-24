execute at 00ed0fa0-6ab8-49ed-ad8f-e1edf22cba5d run tp @s ~ ~ ~
function sbremake:gravity
execute at @s if score @p wimpactPart matches 0 run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 10 normal
execute at @s run playsound minecraft:entity.generic.explode ambient @s ~ ~ ~ 1 1 1
execute if score @s Wimpact matches 100.. run function sbremake:items/mage/wimpact/shield

schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-150 Mana (","color":"aqua"},{"text":"Wither Impact","color":"gold"},{"text":")   ","color":"aqua"}]'
scoreboard players remove @s mana 150

execute at @s as @e[distance=..6,tag=!spectator,type=!#sbremake:never-detect] run function sbremake:items/mage/wimpact/dmg

kill 00ed0fa0-6ab8-49ed-ad8f-e1edf22cba5d
execute at @s unless block ~ ~ ~ #sbremake:items/air run tp @s ~ ~1 ~