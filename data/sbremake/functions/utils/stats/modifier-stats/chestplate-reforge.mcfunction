# Chestplate Stats
data modify storage sbremake:data ChestplateData set from storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.Upgrades.reforge.stats

## General
execute store result score #chestplate-reforge-damage stats run data get storage sbremake:data ChestplateData.damage
execute store result score #chestplate-reforge-health stats run data get storage sbremake:data ChestplateData.health
execute store result score #chestplate-reforge-defense stats run data get storage sbremake:data ChestplateData.defense
execute store result score #chestplate-reforge-strength stats run data get storage sbremake:data ChestplateData.strength
execute store result score #chestplate-reforge-intelligence stats run data get storage sbremake:data ChestplateData.intelligence
execute store result score #chestplate-reforge-crit_damage stats run data get storage sbremake:data ChestplateData.crit_damage
execute store result score #chestplate-reforge-crit_chance stats run data get storage sbremake:data ChestplateData.crit_chance
execute store result score #chestplate-reforge-ferocity stats run data get storage sbremake:data ChestplateData.ferocity
execute store result score #chestplate-reforge-atk_speed stats run data get storage sbremake:data ChestplateData.attack_speed
execute store result score #chestplate-reforge-abil_dmg stats run data get storage sbremake:data ChestplateData.ability_damage
execute store result score #chestplate-reforge-health_Regen stats run data get storage sbremake:data ChestplateData.health_regen
execute store result score #chestplate-reforge-vitality stats run data get storage sbremake:data ChestplateData.vitality
execute store result score #chestplate-reforge-mending stats run data get storage sbremake:data ChestplateData.mending
execute store result score #chestplate-reforge-true_def stats run data get storage sbremake:data ChestplateData.true_defense

## Misc
execute store result score #chestplate-reforge-speed stats run data get storage sbremake:data ChestplateData.speed
execute store result score #chestplate-reforge-scc stats run data get storage sbremake:data ChestplateData.scc
execute store result score #chestplate-reforge-magic_find stats run data get storage sbremake:data ChestplateData.magic_find
execute store result score #chestplate-reforge-pet_luck stats run data get storage sbremake:data ChestplateData.pet_luck
execute store result score #chestplate-reforge-fishing_speed stats run data get storage sbremake:data ChestplateData.fishing_speed

## Wisdom
execute store result score #chestplate-reforge-wisdom_combat stats run data get storage sbremake:data ChestplateData.wisdom_combat
execute store result score #chestplate-reforge-wisdom_mining stats run data get storage sbremake:data ChestplateData.wisdom_mining
execute store result score #chestplate-reforge-wisdom_farming stats run data get storage sbremake:data ChestplateData.wisdom_farming
execute store result score #chestplate-reforge-wisdom_foraging stats run data get storage sbremake:data ChestplateData.wisdom_foraging
execute store result score #chestplate-reforge-wisdom_fishing stats run data get storage sbremake:data ChestplateData.wisdom_fishing
execute store result score #chestplate-reforge-wisdom_enchanting stats run data get storage sbremake:data ChestplateData.wisdom_enchanting
execute store result score #chestplate-reforge-wisdom_alchemy stats run data get storage sbremake:data ChestplateData.wisdom_alchemy
execute store result score #chestplate-reforge-wisdom_carpentry stats run data get storage sbremake:data ChestplateData.wisdom_carpentry
execute store result score #chestplate-reforge-wisdom_rune stats run data get storage sbremake:data ChestplateData.wisdom_rune
execute store result score #chestplate-reforge-wisdom_social stats run data get storage sbremake:data ChestplateData.wisdom_social

## Gathering
execute store result score #chestplate-reforge-mining_speed stats run data get storage sbremake:data ChestplateData.mining_speed
execute store result score #chestplate-reforge-breaking_power stats run data get storage sbremake:data ChestplateData.breaking_power
execute store result score #chestplate-reforge-pristine stats run data get storage sbremake:data ChestplateData.pristine
execute store result score #chestplate-reforge-fortune_foraging stats run data get storage sbremake:data ChestplateData.fortune_foraging
execute store result score #chestplate-reforge-fortune_farming stats run data get storage sbremake:data ChestplateData.fortune_farming
execute store result score #chestplate-reforge-fortune_mining stats run data get storage sbremake:data ChestplateData.fortune_mining