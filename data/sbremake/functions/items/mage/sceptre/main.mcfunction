execute anchored eyes as @r at @s run summon minecraft:bat ^ ^-0.5 ^2 {Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["sceptre","spectator"],CustomName:'["",{"text":"[","color":"#555555"},{"text":"Lv10","color":"#AAAAAA"},{"text":"]","color":"#555555"},{"text":" Spirit Bat","color":"green"},{"text":" "},{"text":"1/1","color": "green"},{"text":"\\u2764","color":"#FF5555"}]',CustomNameVisible:1b}

execute as @e[tag=sceptre] at @s run tp @s ~ ~ ~ facing entity 8b972846-ccec-4466-b60a-ff68a0bcecc6

scoreboard players remove @p mana 125
scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @a actionbar ["",{"text":"Used ","color":"aqua"},{"text":"Guided Bat","color":"gold"},{"text":"! (-125 \u270e Mana)","color":"aqua"}]