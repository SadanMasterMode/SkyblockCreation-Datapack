# Add positions together
scoreboard players operation @s x += @s y
execute store result score @s endResult run scoreboard players operation @s x += @s z

# Square end result
scoreboard players operation @s endResult *= @s endResult

execute if score @s mana < @s endResult run function sbremake:items/sinseeker/mana
execute if score @s mana > @s endResult run function sbremake:items/sinseeker/confirmed