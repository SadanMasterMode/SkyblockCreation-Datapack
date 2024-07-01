# Boots Stats
data modify storage sbremake:data BootsData set from storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.Upgrades.reforge.stats

## General
execute store result score #boots-reforge-damage stats run data get storage sbremake:data BootsData.damage
execute store result score #boots-reforge-health stats run data get storage sbremake:data BootsData.health
execute store result score #boots-reforge-defense stats run data get storage sbremake:data BootsData.defense
execute store result score #boots-reforge-strength stats run data get storage sbremake:data BootsData.strength
execute store result score #boots-reforge-intelligence stats run data get storage sbremake:data BootsData.intelligence
execute store result score #boots-reforge-crit_damage stats run data get storage sbremake:data BootsData.crit_damage
execute store result score #boots-reforge-crit_chance stats run data get storage sbremake:data BootsData.crit_chance
execute store result score #boots-reforge-ferocity stats run data get storage sbremake:data BootsData.ferocity
execute store result score #boots-reforge-atk_speed stats run data get storage sbremake:data BootsData.attack_speed
execute store result score #boots-reforge-abil_dmg stats run data get storage sbremake:data BootsData.ability_damage
execute store result score #boots-reforge-health_Regen stats run data get storage sbremake:data BootsData.health_regen
execute store result score #boots-reforge-vitality stats run data get storage sbremake:data BootsData.vitality
execute store result score #boots-reforge-mending stats run data get storage sbremake:data BootsData.mending
execute store result score #boots-reforge-true_def stats run data get storage sbremake:data BootsData.true_defense

## Misc
execute store result score #boots-reforge-speed stats run data get storage sbremake:data BootsData.speed
execute store result score #boots-reforge-scc stats run data get storage sbremake:data BootsData.scc
execute store result score #boots-reforge-magic_find stats run data get storage sbremake:data BootsData.magic_find
execute store result score #boots-reforge-pet_luck stats run data get storage sbremake:data BootsData.pet_luck
execute store result score #boots-reforge-fishing_speed stats run data get storage sbremake:data BootsData.fishing_speed

## Wisdom
execute store result score #boots-reforge-wisdom_combat stats run data get storage sbremake:data BootsData.wisdom_combat
execute store result score #boots-reforge-wisdom_mining stats run data get storage sbremake:data BootsData.wisdom_mining
execute store result score #boots-reforge-wisdom_farming stats run data get storage sbremake:data BootsData.wisdom_farming
execute store result score #boots-reforge-wisdom_foraging stats run data get storage sbremake:data BootsData.wisdom_foraging
execute store result score #boots-reforge-wisdom_fishing stats run data get storage sbremake:data BootsData.wisdom_fishing
execute store result score #boots-reforge-wisdom_enchanting stats run data get storage sbremake:data BootsData.wisdom_enchanting
execute store result score #boots-reforge-wisdom_alchemy stats run data get storage sbremake:data BootsData.wisdom_alchemy
execute store result score #boots-reforge-wisdom_carpentry stats run data get storage sbremake:data BootsData.wisdom_carpentry
execute store result score #boots-reforge-wisdom_rune stats run data get storage sbremake:data BootsData.wisdom_rune
execute store result score #boots-reforge-wisdom_social stats run data get storage sbremake:data BootsData.wisdom_social

## Gathering
execute store result score #boots-reforge-mining_speed stats run data get storage sbremake:data BootsData.mining_speed
execute store result score #boots-reforge-breaking_power stats run data get storage sbremake:data BootsData.breaking_power
execute store result score #boots-reforge-pristine stats run data get storage sbremake:data BootsData.pristine
execute store result score #boots-reforge-fortune_foraging stats run data get storage sbremake:data BootsData.fortune_foraging
execute store result score #boots-reforge-fortune_farming stats run data get storage sbremake:data BootsData.fortune_farming
execute store result score #boots-reforge-fortune_mining stats run data get storage sbremake:data BootsData.fortune_mining