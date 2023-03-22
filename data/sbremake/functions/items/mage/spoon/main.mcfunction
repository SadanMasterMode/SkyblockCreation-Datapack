summon marker ^ ^ ^1 {Invulnerable:1b,Tags:["moltenGuide","spectator"],NoGravity:1b,data:{SBRemake:{UUID:"a6ae9cfe-01ee-4cc2-8752-f481b8babe7a"}},UUID:[I;-1498505986,32394434,-2024606591,-1195721094]}

execute as a6ae9cfe-01ee-4cc2-8752-f481b8babe7a at @s[tag=!facingPlayer] run tp @s ~ ~ ~ facing entity @p feet
execute as a6ae9cfe-01ee-4cc2-8752-f481b8babe7a at @s[tag=!facingPlayer] run tp @s ~ ~ ~ ~180 0
tag @e[tag=moltenGuide,tag=!facingPlayer] add facingPlayer

scoreboard players set #spoon count 0
schedule function sbremake:items/mage/spoon/wave 2t append
schedule function sbremake:items/mage/spoon/wave 4t append
schedule function sbremake:items/mage/spoon/wave 6t append
schedule function sbremake:items/mage/spoon/wave 8t append

scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar ["",{"text":"Used ","color":"aqua"},{"text":"Molten Wave","color":"gold"},{"text":"! (-250 \u270e Mana)","color":"aqua"}]

scoreboard players remove @s mana 250
scoreboard players set @s moltenCD 0