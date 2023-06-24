schedule clear sbremake:items/berserk/aots/delay
summon area_effect_cloud ^0.4 ^ ^1 {Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,HandItems:[{id:"diamond_axe",Count:1b},{}],DisabledSlots:4144959,Pose:{RightArm:[0f,0f,0f]},Tags:["stage-4","spectator","aots","projectile"]}],Radius:0,Duration:2147483647,Tags:["aots","spectator","projectile"]}

execute as @e[tag=aots,tag=!facingPlayer] at @s facing entity 8b972846-ccec-4466-b60a-ff68a0bcecc6 feet run tp @s ~ ~ ~ ~ ~
tag @e[tag=aots,tag=!facingPlayer] add facingPlayer

playsound minecraft:block.lava.pop master @s

schedule clear sbremake:manareset
schedule function sbremake:manareset 1.1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-160 Mana (","color":"aqua"},{"text":"Throw","color":"gold"},{"text":")   ","color":"aqua"}]'

scoreboard players remove @s mana 160
