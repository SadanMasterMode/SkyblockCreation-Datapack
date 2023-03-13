schedule clear sbremake:items/aots/delay
execute as @p at @s run summon armor_stand ^ ^ ^2 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_axe",Count:1b},{}],CustomName:'{"text":"aots"}',DisabledSlots:4144959,Pose:{RightArm:[0f,0f,0f]},Tags:["stage3","spectator"]}
execute as @e[name="aots",tag=!facingPlayer] at @s facing entity 8b972846-ccec-4466-b60a-ff68a0bcecc6 feet run tp @s ~ ~ ~ ~ 0
tag @e[name="aots",tag=!facingPlayer] add facingPlayer
scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1.2s append
title @a actionbar ["",{"text":"Used","color":"aqua"},{"text":" Throw","color":"gold"},{"text":"! (-80 \u270e Mana)","color":"aqua"}]
scoreboard players remove @p mana 80
