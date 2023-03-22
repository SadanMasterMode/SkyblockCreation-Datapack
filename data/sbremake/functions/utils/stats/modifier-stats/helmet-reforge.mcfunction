# Helmet Stats
data modify storage sbremake:data HelmetData set from storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.Upgrades.reforge.stats

## General
execute store result score #helmet-reforge-damage stats run data get storage sbremake:data HelmetData.damage
execute store result score #helmet-reforge-health stats run data get storage sbremake:data HelmetData.health
execute store result score #helmet-reforge-defense stats run data get storage sbremake:data HelmetData.defense
execute store result score #helmet-reforge-strength stats run data get storage sbremake:data HelmetData.strength
execute store result score #helmet-reforge-intelligence stats run data get storage sbremake:data HelmetData.intelligence
execute store result score #helmet-reforge-crit_damage stats run data get storage sbremake:data HelmetData.crit_damage
execute store result score #helmet-reforge-crit_chance stats run data get storage sbremake:data HelmetData.crit_chance
execute store result score #helmet-reforge-ferocity stats run data get storage sbremake:data HelmetData.ferocity
execute store result score #helmet-reforge-atk_speed stats run data get storage sbremake:data HelmetData.attack_speed
execute store result score #helmet-reforge-abil_dmg stats run data get storage sbremake:data HelmetData.ability_damage
execute store result score #helmet-reforge-health_Regen stats run data get storage sbremake:data HelmetData.health_regen
execute store result score #helmet-reforge-vitality stats run data get storage sbremake:data HelmetData.vitality
execute store result score #helmet-reforge-mending stats run data get storage sbremake:data HelmetData.mending
execute store result score #helmet-reforge-true_def stats run data get storage sbremake:data HelmetData.true_defense

## Misc
execute store result score #helmet-reforge-speed stats run data get storage sbremake:data HelmetData.speed
execute store result score #helmet-reforge-scc stats run data get storage sbremake:data HelmetData.scc
execute store result score #helmet-reforge-magic_find stats run data get storage sbremake:data HelmetData.magic_find
execute store result score #helmet-reforge-pet_luck stats run data get storage sbremake:data HelmetData.pet_luck
execute store result score #helmet-reforge-fishing_speed stats run data get storage sbremake:data HelmetData.fishing_speed

## Wisdom
execute store result score #helmet-reforge-wisdom_combat stats run data get storage sbremake:data HelmetData.wisdom_combat
execute store result score #helmet-reforge-wisdom_mining stats run data get storage sbremake:data HelmetData.wisdom_mining
execute store result score #helmet-reforge-wisdom_farming stats run data get storage sbremake:data HelmetData.wisdom_farming
execute store result score #helmet-reforge-wisdom_foraging stats run data get storage sbremake:data HelmetData.wisdom_foraging
execute store result score #helmet-reforge-wisdom_fishing stats run data get storage sbremake:data HelmetData.wisdom_fishing
execute store result score #helmet-reforge-wisdom_enchanting stats run data get storage sbremake:data HelmetData.wisdom_enchanting
execute store result score #helmet-reforge-wisdom_alchemy stats run data get storage sbremake:data HelmetData.wisdom_alchemy
execute store result score #helmet-reforge-wisdom_carpentry stats run data get storage sbremake:data HelmetData.wisdom_carpentry
execute store result score #helmet-reforge-wisdom_rune stats run data get storage sbremake:data HelmetData.wisdom_rune
execute store result score #helmet-reforge-wisdom_social stats run data get storage sbremake:data HelmetData.wisdom_social

## Gathering
execute store result score #helmet-reforge-mining_speed stats run data get storage sbremake:data HelmetData.mining_speed
execute store result score #helmet-reforge-breaking_power stats run data get storage sbremake:data HelmetData.breaking_power
execute store result score #helmet-reforge-pristine stats run data get storage sbremake:data HelmetData.pristine
execute store result score #helmet-reforge-fortune_foraging stats run data get storage sbremake:data HelmetData.fortune_foraging
execute store result score #helmet-reforge-fortune_farming stats run data get storage sbremake:data HelmetData.fortune_farming
execute store result score #helmet-reforge-fortune_mining stats run data get storage sbremake:data HelmetData.fortune_mining