scoreboard players add #fury-1 recursive 1

particle flame ^ ^0.33 ^7 0 0 0 0 0 normal

execute unless score #fury-1 recursive matches 30.. rotated ~11 ~ run function sbremake:items/mage/fury/dance
execute if score #fury-1 recursive matches 30.. run scoreboard players reset #fury-1 recursive