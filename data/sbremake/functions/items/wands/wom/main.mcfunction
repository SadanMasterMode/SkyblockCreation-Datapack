scoreboard players add @s mana 250
scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar ["",{"text":"Used ","color":"aqua"},{"text":"Rejuv","color":"gold","bold": false},{"text":"!","color":"aqua","bold": false},{"text":" (+250 \u270e Mana)","color":"aqua","bold": false}]