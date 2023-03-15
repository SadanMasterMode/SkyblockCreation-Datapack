execute as @p at @s anchored eyes run summon armor_stand ^ ^ ^0.1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["fury","spectator"]}
execute as @e[tag=fury,tag=!facingPlayer] at @s run tp @s ~ ~ ~ facing entity @p eyes
tag @e[tag=fury,tag=!facingPlayer] add facingPlayer

scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
execute unless entity @p[scores={mana=..25}] run title @a actionbar ["",{"text":"Used","color":"aqua"},{"text":" Firestorm","color":"gold"},{"text":"! (-1000 \u270e Mana)","color":"aqua"}]

execute at @p run playsound entity.blaze.shoot master @p ~ ~ ~
execute at @p run playsound entity.blaze.shoot master @p ~ ~ ~
execute at @p run playsound entity.blaze.shoot master @p ~ ~ ~

scoreboard players remove @p mana 1000
scoreboard players reset @p furyCD