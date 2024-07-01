execute positioned ^-0.5 ^ ^1 positioned ~ ~-0.25 ~ summon area_effect_cloud run function sbremake:items/mage/witherlord/witherlord-3

execute positioned ^ ^ ^1 positioned ~ ~-0.25 ~ summon area_effect_cloud run function sbremake:items/mage/witherlord/witherlord-1

execute positioned ^0.5 ^ ^1 positioned ~ ~-0.25 ~ summon area_effect_cloud run function sbremake:items/mage/witherlord/witherlord-2

schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-40 Mana (","color":"aqua"},{"text":"Witherlord","color":"gold"},{"text":")   ","color":"aqua"}]'
scoreboard players remove @s mana 40
playsound minecraft:entity.wither.ambient ambient @s ~ ~ ~ 0.5 1 1