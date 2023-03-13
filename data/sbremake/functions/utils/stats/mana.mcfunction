# Base Mana
scoreboard players set @s maxMana 1000
scoreboard players operation @s maxMana += @s itemIntelligence
scoreboard players operation @s maxMana += @s headIntelligence
scoreboard players operation @s maxMana += @s chestplateIntelligence
scoreboard players operation @s maxMana += @s leggingsIntelligence
scoreboard players operation @s maxMana += @s bootsIntelligence
scoreboard players operation @s maxMana += @s extraMana

execute if score @s infiniteMana matches 1.. run scoreboard players set @s maxMana 10000000
execute if score @s infiniteMana matches 1.. run scoreboard players set @s mana 10000000