execute on vehicle at @s run fill ~ ~ ~ ~ ~3 ~ air replace barrier

execute on vehicle on passengers if entity @s[type=text_display] run scoreboard players operation #current fakePlayers = @s mercuriusManaDec

execute on vehicle on passengers run kill @s[type=!interaction]
execute on vehicle run kill @s

data remove storage sbremake:data World.MercuriusTotem.extra

execute if entity @s[tag=healingTotem] run data modify storage sbremake:data World.MercuriusTotem.type set value '[{"text":"Healing Totem","color":"green"}]'
execute if entity @s[tag=manaTotem] run data modify storage sbremake:data World.MercuriusTotem.type set value '[{"text":"Mana Totem","color":"blue"}]'
execute if entity @s[tag=manaTotem] run data modify storage sbremake:data World.MercuriusTotem.extra set value '[{"text":" (","color":"green"},{"text":"+","color":"aqua"},{"score":{"name": "#current","objective": "fakePlayers"},"color":"aqua"},{"text":" ✎ Max Mana","color":"aqua"},{"text":")","color":"green"}]'
execute if entity @s[tag=strengthTotem] run data modify storage sbremake:data World.MercuriusTotem.type set value '[{"text":"Power Totem","color":"red"}]'

tellraw @a [{"text": "You destroyed the ","color": "green"},{"nbt":"World.MercuriusTotem.type","storage": "sbremake:data","interpret": true},{"text": "!","color": "green"},{"nbt":"World.MercuriusTotem.extra","storage": "sbremake:data","interpret": true}]

kill @s