execute as @p at @s run summon armor_stand ^ ^ ^1 {Invisible:1b,Invulnerable:1b,Tags:["moltenGuide","spectator"],NoGravity:1b,DisabledSlots:4144896}

execute as @e[tag=moltenGuide,tag=!facingPlayer] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=moltenGuide,tag=!facingPlayer] at @s run tp @s ~ ~ ~ ~180 0
tag @e[tag=moltenGuide,tag=!facingPlayer] add facingPlayer

scoreboard players set #spoon count 0
schedule function sbremake:items/mage/spoon/wave 2t append
schedule function sbremake:items/mage/spoon/wave 4t append
schedule function sbremake:items/mage/spoon/wave 6t append
schedule function sbremake:items/mage/spoon/wave 8t append

scoreboard players set @a manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @a actionbar ["",{"text":"Used ","color":"aqua"},{"text":"Molten Wave","color":"gold"},{"text":"! (-250 \u270e Mana)","color":"aqua"}]

scoreboard players remove @a mana 250
scoreboard players set @a moltenCD 0