# Leggings Stats
data modify storage sbremake:data LeggingsData set from storage sbremake:data PlayerData.Inventory[{Slot:101b}].components."minecraft:custom_data".Base.stats

## General
execute store result score #leggings-damage stats run data get storage sbremake:data LeggingsData.damage
execute store result score #leggings-health stats run data get storage sbremake:data LeggingsData.health
execute store result score #leggings-defense stats run data get storage sbremake:data LeggingsData.defense
execute store result score #leggings-strength stats run data get storage sbremake:data LeggingsData.strength
execute store result score #leggings-intelligence stats run data get storage sbremake:data LeggingsData.intelligence
execute store result score #leggings-crit_damage stats run data get storage sbremake:data LeggingsData.crit_damage
execute store result score #leggings-crit_chance stats run data get storage sbremake:data LeggingsData.crit_chance
execute store result score #leggings-ferocity stats run data get storage sbremake:data LeggingsData.ferocity
execute store result score #leggings-atk_speed stats run data get storage sbremake:data LeggingsData.attack_speed
execute store result score #leggings-abil_dmg stats run data get storage sbremake:data LeggingsData.ability_damage
execute store result score #leggings-health_Regen stats run data get storage sbremake:data LeggingsData.health_regen
execute store result score #leggings-vitality stats run data get storage sbremake:data LeggingsData.vitality
execute store result score #leggings-mending stats run data get storage sbremake:data LeggingsData.mending
execute store result score #leggings-true_def stats run data get storage sbremake:data LeggingsData.true_defense

## Misc
execute store result score #leggings-speed stats run data get storage sbremake:data LeggingsData.speed
execute store result score #leggings-scc stats run data get storage sbremake:data LeggingsData.scc
execute store result score #leggings-magic_find stats run data get storage sbremake:data LeggingsData.magic_find
execute store result score #leggings-pet_luck stats run data get storage sbremake:data LeggingsData.pet_luck
execute store result score #leggings-fishing_speed stats run data get storage sbremake:data LeggingsData.fishing_speed

## Wisdom
execute store result score #leggings-wisdom_combat stats run data get storage sbremake:data LeggingsData.wisdom_combat
execute store result score #leggings-wisdom_mining stats run data get storage sbremake:data LeggingsData.wisdom_mining
execute store result score #leggings-wisdom_farming stats run data get storage sbremake:data LeggingsData.wisdom_farming
execute store result score #leggings-wisdom_foraging stats run data get storage sbremake:data LeggingsData.wisdom_foraging
execute store result score #leggings-wisdom_fishing stats run data get storage sbremake:data LeggingsData.wisdom_fishing
execute store result score #leggings-wisdom_enchanting stats run data get storage sbremake:data LeggingsData.wisdom_enchanting
execute store result score #leggings-wisdom_alchemy stats run data get storage sbremake:data LeggingsData.wisdom_alchemy
execute store result score #leggings-wisdom_carpentry stats run data get storage sbremake:data LeggingsData.wisdom_carpentry
execute store result score #leggings-wisdom_rune stats run data get storage sbremake:data LeggingsData.wisdom_rune
execute store result score #leggings-wisdom_social stats run data get storage sbremake:data LeggingsData.wisdom_social

## Gathering
execute store result score #leggings-mining_speed stats run data get storage sbremake:data LeggingsData.mining_speed
execute store result score #leggings-breaking_power stats run data get storage sbremake:data LeggingsData.breaking_power
execute store result score #leggings-pristine stats run data get storage sbremake:data LeggingsData.pristine
execute store result score #leggings-fortune_foraging stats run data get storage sbremake:data LeggingsData.fortune_foraging
execute store result score #leggings-fortune_farming stats run data get storage sbremake:data LeggingsData.fortune_farming
execute store result score #leggings-fortune_mining stats run data get storage sbremake:data LeggingsData.fortune_mining