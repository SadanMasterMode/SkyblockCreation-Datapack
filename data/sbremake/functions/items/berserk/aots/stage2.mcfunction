schedule clear sbremake:items/berserk/aots/delay
summon area_effect_cloud ^0.4 ^ ^1 {Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,HandItems:[{id:"diamond_axe",Count:1b},{}],DisabledSlots:4144959,Pose:{RightArm:[0f,0f,0f]},Tags:["stage-2","spectator","aots"]}],Radius:0,Duration:2147483647,Tags:["aots","spectator"]}

execute as @e[tag=aots,tag=!facingPlayer] at @s facing entity 8b972846-ccec-4466-b60a-ff68a0bcecc6 feet run tp @s ~ ~ ~ ~ ~
tag @e[tag=aots,tag=!facingPlayer] add facingPlayer

playsound minecraft:entity.wither.break_block master @s ~ ~ ~ 0.5 0.7


scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar ["",{"text":"Used","color":"aqua"},{"text":" Throw","color":"gold"},{"text":"! (-40 \u270e Mana)","color":"aqua"}]

scoreboard players remove @s mana 40
