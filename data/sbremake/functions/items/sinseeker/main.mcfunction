# Get player pos
execute store result score @s x run data get entity @s Pos[0] 1
execute store result score @s y run data get entity @s Pos[1] 1
execute store result score @s z run data get entity @s Pos[2] 1

# Get marker pos
execute as 487bdc79-7a38-4017-869d-f3f0f61a6adc store result score @s x run data get entity @s Pos[0] 1
execute as 487bdc79-7a38-4017-869d-f3f0f61a6adc store result score @s y run data get entity @s Pos[1] 1
execute as 487bdc79-7a38-4017-869d-f3f0f61a6adc store result score @s z run data get entity @s Pos[2] 1

# Subtract marker distance with player to calculate mana cost
execute store result score @s nx run scoreboard players operation @s x -= 487bdc79-7a38-4017-869d-f3f0f61a6adc x
execute store result score @s ny run scoreboard players operation @s y -= 487bdc79-7a38-4017-869d-f3f0f61a6adc y
execute store result score @s nz run scoreboard players operation @s z -= 487bdc79-7a38-4017-869d-f3f0f61a6adc z

# Convert negative into positive
execute if score @s x matches ..0 run function sbremake:items/sinseeker/xmath
execute if score @s y matches ..0 run function sbremake:items/sinseeker/ymath
execute if score @s z matches ..0 run function sbremake:items/sinseeker/zmath

function sbremake:items/sinseeker/final