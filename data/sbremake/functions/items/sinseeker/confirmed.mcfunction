scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar [{"text":"Used ","color":"aqua"},{"text":"Sinrecall Transmission","color":"gold"},{"text":"! (-","color":"aqua"},{"score":{"name":"@s","objective":"endResult"},"color":"aqua"},{"text":" mana)","color":"aqua"}]

playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
tp @s 487bdc79-7a38-4017-869d-f3f0f61a6adc
kill 487bdc79-7a38-4017-869d-f3f0f61a6adc

scoreboard players operation @s mana -= @s endResult