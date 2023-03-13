effect give @e[tag=woa] resistance 100 4 true
execute as @p at @s run tp @e[tag=woa] ^ ^1 ^2
execute store success score @p woaSuccess if score @p woaSuccess matches 0 if entity @p[nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'[{"text":"Wand of Ascent","italic":false,"color":"dark_purple"}]'}}}}] run function sbremake:items/wands/woa/summon
execute unless entity @p[nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'[{"text":"Wand of Ascent","italic":false,"color":"dark_purple"}]'}}}}] run function sbremake:items/wands/woa/destroy
execute if entity @e[tag=woa,nbt={HurtTime:10s}] run function sbremake:items/wands/woa/final
execute if entity @p[scores={woaRC=1..},nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'[{"text":"Wand of Ascent","italic":false,"color":"dark_purple"}]'}}}}] run function sbremake:items/wands/woa/main
execute if score @p gamemodeType matches 3 run function sbremake:items/wands/woa/destroy
scoreboard players reset @p woaRC