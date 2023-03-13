effect give @p speed 30 1 true
scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @a actionbar ["",{"text":"Used","color":"aqua"},{"text":" Speed Boost","color":"gold"},{"text":"! (-50 \u270e Mana)","color":"aqua"}]
scoreboard players remove @p mana 50