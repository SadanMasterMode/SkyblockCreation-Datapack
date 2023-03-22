data modify storage sbremake:data PlayerData set from entity @s

# Mana
execute unless score @s mana >= @s maxMana run scoreboard players add @s mana 1

function sbremake:utils/stats/extra_mana_give
execute run function sbremake:utils/stats/mana
function sbremake:utils/stats/extra_mana_remove
### Percentage Mana
execute store result score #25 percentageMana run scoreboard players get @s maxMana
execute store result score #25 percentageManaMod run scoreboard players operation #25 percentageMana /= #4 const
execute store result score #25 percentageMana run scoreboard players get @s maxMana
scoreboard players set #40 percentageMana 40
scoreboard players operation #40 percentageMana *= @s maxMana
execute store result score #40 percentageManaMod run scoreboard players operation #40 percentageMana /= #100 const

execute if score @s mana >= @s maxMana run execute store result score @s mana run scoreboard players get @s maxMana

# Defense
scoreboard players set @s defense 0
scoreboard players operation @s defense += #item-defense stats
scoreboard players operation @s defense += #helmet-defense stats
scoreboard players operation @s defense += #chestplate-defense stats
scoreboard players operation @s defense += #leggings-defense stats
scoreboard players operation @s defense += #boots-defense stats

# Health
scoreboard players set @s maxHealth 100
scoreboard players operation @s maxHealth += #item-health stats
scoreboard players operation @s maxHealth += #helmet-health stats
scoreboard players operation @s maxHealth += #chestplate-health stats
scoreboard players operation @s maxHealth += #leggings-health stats
scoreboard players operation @s maxHealth += #boots-health stats

# Damage
scoreboard players set @s damage 0
scoreboard players operation @s damage += #item-damage stats
scoreboard players operation @s damage += #helmet-damage stats
scoreboard players operation @s damage += #chestplate-damage stats
scoreboard players operation @s damage += #leggings-damage stats
scoreboard players operation @s damage += #boots-damage stats