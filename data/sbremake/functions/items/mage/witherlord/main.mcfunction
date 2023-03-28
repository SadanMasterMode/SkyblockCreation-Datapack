execute positioned ^-0.5 ^ ^1 summon area_effect_cloud run function sbremake:items/mage/witherlord/witherlord-3

execute positioned ^ ^ ^1 summon area_effect_cloud run function sbremake:items/mage/witherlord/witherlord-1

execute positioned ^0.5 ^ ^1 summon area_effect_cloud run function sbremake:items/mage/witherlord/witherlord-2

scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar ["",{"text":"Used ","color":"aqua"},{"text":"Witherlord","color":"gold"},{"text":"! (-40 \u270e Mana)","color":"aqua"}]
scoreboard players remove @s mana 40
playsound minecraft:entity.wither.ambient ambient @s ~ ~ ~ 0.5 1 1