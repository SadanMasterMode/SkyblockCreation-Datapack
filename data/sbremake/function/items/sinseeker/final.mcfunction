# Add positions together
scoreboard players operation @s x += @s y
execute store result score @s endResult run scoreboard players operation @s x += @s z

# Square end result
scoreboard players operation @s endResult *= @s endResult

execute if score @s mana < @s endResult run tellraw @a [{"text":"You need ","color":"red"},{"score":{"name":"@p","objective":"endResult"},"color":"red"},{"text":" Mana to use this ability!","color":"red"}]
execute if score @s mana > @s endResult run function sbremake:items/sinseeker/confirmed