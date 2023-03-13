execute store result score @p endResult run scoreboard players operation @p x += @p y
execute store result score @p endResult run scoreboard players operation @p endResult += @p z
scoreboard players operation @p endResult *= @p endResult
execute if score @p mana < @p endResult run function sbremake:items/sinseeker/mana
execute unless score @p mana < @p endResult run tp @p @e[name="sinmark",limit=1,sort=random]
execute unless score @p mana < @p endResult run scoreboard players set @p manaWarn 1
execute unless score @p mana < @p endResult run schedule clear sbremake:manareset
execute unless score @p mana < @p endResult run schedule function sbremake:manareset 1s append
execute unless score @p mana < @p endResult run title @a actionbar [{"text":"Used ","color":"aqua"},{"text":"Sinrecall Transmission","color":"gold"},{"text":"! (-","color":"aqua"},{"score":{"name":"@p","objective":"endResult"},"color":"aqua"},{"text":" mana)","color":"aqua"}]
execute unless score @p mana < @p endResult at @p run playsound minecraft:entity.enderman.teleport ambient @p ~ ~ ~
execute unless score @p mana < @p endResult run kill @e[name="sinmark"]
execute unless score @p mana < @p endResult run scoreboard players operation @p mana -= @p endResult