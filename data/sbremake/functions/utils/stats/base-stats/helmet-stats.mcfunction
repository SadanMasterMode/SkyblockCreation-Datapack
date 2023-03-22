# Helmet Stats
data modify storage sbremake:data HelmetData set from storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.Base.stats

## General
execute store result score #helmet-damage stats run data get storage sbremake:data HelmetData.damage
execute store result score #helmet-health stats run data get storage sbremake:data HelmetData.health
execute store result score #helmet-defense stats run data get storage sbremake:data HelmetData.defense
execute store result score #helmet-strength stats run data get storage sbremake:data HelmetData.strength
execute store result score #helmet-intelligence stats run data get storage sbremake:data HelmetData.intelligence
execute store result score #helmet-crit_damage stats run data get storage sbremake:data HelmetData.crit_damage
execute store result score #helmet-crit_chance stats run data get storage sbremake:data HelmetData.crit_chance
execute store result score #helmet-ferocity stats run data get storage sbremake:data HelmetData.ferocity
execute store result score #helmet-atk_speed stats run data get storage sbremake:data HelmetData.attack_speed
execute store result score #helmet-abil_dmg stats run data get storage sbremake:data HelmetData.ability_damage
execute store result score #helmet-health_Regen stats run data get storage sbremake:data HelmetData.health_regen
execute store result score #helmet-vitality stats run data get storage sbremake:data HelmetData.vitality
execute store result score #helmet-mending stats run data get storage sbremake:data HelmetData.mending
execute store result score #helmet-true_def stats run data get storage sbremake:data HelmetData.true_defense

## Misc
execute store result score #helmet-speed stats run data get storage sbremake:data HelmetData.speed
execute store result score #helmet-scc stats run data get storage sbremake:data HelmetData.scc
execute store result score #helmet-magic_find stats run data get storage sbremake:data HelmetData.magic_find
execute store result score #helmet-pet_luck stats run data get storage sbremake:data HelmetData.pet_luck
execute store result score #helmet-fishing_speed stats run data get storage sbremake:data HelmetData.fishing_speed

## Wisdom
execute store result score #helmet-wisdom_combat stats run data get storage sbremake:data HelmetData.wisdom_combat
execute store result score #helmet-wisdom_mining stats run data get storage sbremake:data HelmetData.wisdom_mining
execute store result score #helmet-wisdom_farming stats run data get storage sbremake:data HelmetData.wisdom_farming
execute store result score #helmet-wisdom_foraging stats run data get storage sbremake:data HelmetData.wisdom_foraging
execute store result score #helmet-wisdom_fishing stats run data get storage sbremake:data HelmetData.wisdom_fishing
execute store result score #helmet-wisdom_enchanting stats run data get storage sbremake:data HelmetData.wisdom_enchanting
execute store result score #helmet-wisdom_alchemy stats run data get storage sbremake:data HelmetData.wisdom_alchemy
execute store result score #helmet-wisdom_carpentry stats run data get storage sbremake:data HelmetData.wisdom_carpentry
execute store result score #helmet-wisdom_rune stats run data get storage sbremake:data HelmetData.wisdom_rune
execute store result score #helmet-wisdom_social stats run data get storage sbremake:data HelmetData.wisdom_social

## Gathering
execute store result score #helmet-mining_speed stats run data get storage sbremake:data HelmetData.mining_speed
execute store result score #helmet-breaking_power stats run data get storage sbremake:data HelmetData.breaking_power
execute store result score #helmet-pristine stats run data get storage sbremake:data HelmetData.pristine
execute store result score #helmet-fortune_foraging stats run data get storage sbremake:data HelmetData.fortune_foraging
execute store result score #helmet-fortune_farming stats run data get storage sbremake:data HelmetData.fortune_farming
execute store result score #helmet-fortune_mining stats run data get storage sbremake:data HelmetData.fortune_mining