# Base Mana
scoreboard players set @s maxMana 1000
scoreboard players operation @s maxMana += #item-intelligence stats
scoreboard players operation @s maxMana += #item-reforge-intelligence stats

scoreboard players operation @s maxMana += #helmet-intelligence stats
scoreboard players operation @s maxMana += #helmet-reforge-intelligence stats

scoreboard players operation @s maxMana += #chestplate-intelligence stats
scoreboard players operation @s maxMana += #chestplate-reforge-intelligence stats

scoreboard players operation @s maxMana += #leggings-intelligence stats
scoreboard players operation @s maxMana += #leggings-reforge-intelligence stats

scoreboard players operation @s maxMana += #boots-intelligence stats
scoreboard players operation @s maxMana += #boots-reforge-intelligence stats

scoreboard players operation @s maxMana += @s extraMana

execute if score @s mana matches ..0 run scoreboard players set @s mana 0
execute if score @s maxMana matches ..0 run scoreboard players set @s maxMana 0
execute if score @s infiniteMana matches 1.. run scoreboard players set @s maxMana 10000000
execute if score @s infiniteMana matches 1.. run scoreboard players set @s mana 10000000