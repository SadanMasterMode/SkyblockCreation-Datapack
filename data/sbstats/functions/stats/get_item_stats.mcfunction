# Pre stuff
data modify storage sbstats:data PlayerData set from entity @s
function sbstats:hpb/main

# BASE STATS

## General
execute store result score #Base_damage stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.damage
execute store result score #Base_health stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.health
execute store result score #Base_defense stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.defense
execute store result score #Base_strength stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.strength
execute store result score #Base_intelligence stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.intelligence
execute store result score #Base_crit_damage stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.crit_damage
execute store result score #Base_crit_chance stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.crit_chance
execute store result score #Base_ferocity stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.ferocity
execute store result score #Base_atk_speed stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.attack_speed
execute store result score #Base_abil_dmg stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.ability_damage
execute store result score #Base_health_Regen stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.health_regen
execute store result score #Base_vitality stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.vitality
execute store result score #Base_mending stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.mending
execute store result score #Base_true_def stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.true_defense

## Misc
execute store result score #Base_speed stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.speed
execute store result score #Base_scc stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.scc
execute store result score #Base_magic_find stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.magic_find
execute store result score #Base_pet_luck stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.pet_luck
execute store result score #Base_fishing_speed stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.fishing_speed

## Wisdom
execute store result score #Base_wisdom_combat stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.wisdom_combat
execute store result score #Base_wisdom_mining stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.wisdom_mining
execute store result score #Base_wisdom_farming stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.wisdom_farming
execute store result score #Base_wisdom_foraging stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.wisdom_foraging
execute store result score #Base_wisdom_fishing stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.wisdom_fishing
execute store result score #Base_wisdom_enchanting stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.wisdom_enchanting
execute store result score #Base_wisdom_alchemy stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.wisdom_alchemy
execute store result score #Base_wisdom_carpentry stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.wisdom_carpentry
execute store result score #Base_wisdom_rune stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.wisdom_rune
execute store result score #Base_wisdom_social stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.wisdom_social

## Gathering
execute store result score #Base_mining_speed stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.mining_speed
execute store result score #Base_breaking_power stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.breaking_power
execute store result score #Base_pristine stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.pristine
execute store result score #Base_fortune_foraging stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.fortune_foraging
execute store result score #Base_fortune_farming stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.fortune_farming
execute store result score #Base_fortune_mining stats run data get storage sbstats:data PlayerData.SelectedItem.tag.Base.stats.fortune_mining

# REFORGE STATS

## General
execute store result score #damage reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.damage
execute store result score #health reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.health
execute store result score #defense reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.defense
execute store result score #strength reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.strength
execute store result score #intelligence reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.intelligence
execute store result score #crit_damage reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.crit_damage
execute store result score #crit_chance reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.crit_chance
execute store result score #ferocity reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.ferocity
execute store result score #atk_speed reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.attack_speed
execute store result score #abil_dmg reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.ability_damage
execute store result score #health_regen reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.health_regen
execute store result score #vitality reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.vitality
execute store result score #mending reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.mending
execute store result score #true_def reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.true_defense

## Misc
execute store result score #speed reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.speed
execute store result score #scc reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.scc
execute store result score #magic_find reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.magic_find
execute store result score #pet_luck reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.pet_luck
execute store result score #fishing_speed reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.fishing_speed

## Wisdom
execute store result score #wisdom_combat reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.wisdom_combat
execute store result score #wisdom_mining reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.wisdom_mining
execute store result score #wisdom_farming reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.wisdom_farming
execute store result score #wisdom_foraging reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.wisdom_foraging
execute store result score #wisdom_fishing reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.wisdom_fishing
execute store result score #wisdom_enchanting reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.wisdom_enchanting
execute store result score #wisdom_alchemy reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.wisdom_alchemy
execute store result score #wisdom_carpentry reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.wisdom_carpentry
execute store result score #wisdom_rune reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.wisdom_rune
execute store result score #wisdom_social reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.wisdom_social

## Gathering

execute store result score #mining_speed reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.mining_speed
execute store result score #breaking_power reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.breaking_power
execute store result score #pristine reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.pristine
execute store result score #fortune_foraging reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.fortune_foraging
execute store result score #fortune_farming reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.fortune_farming
execute store result score #fortune_mining reforgeStats run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats.fortune_mining

# STAT OPERATIONS - reforges

## General
scoreboard players operation #Base_damage stats += #damage reforgeStats
scoreboard players operation #Base_health stats += #health reforgeStats
scoreboard players operation #Base_defense stats += #defense reforgeStats
scoreboard players operation #Base_strength stats += #strength reforgeStats
scoreboard players operation #Base_intelligence stats += #intelligence reforgeStats
scoreboard players operation #Base_crit_damage stats += #crit_damage reforgeStats
scoreboard players operation #Base_crit_chance stats += #crit_chance reforgeStats
scoreboard players operation #Base_ferocity stats += #ferocity reforgeStats
scoreboard players operation #Base_atk_speed stats += #atk_speed reforgeStats
scoreboard players operation #Base_abil_dmg stats += #abil_dmg reforgeStats
scoreboard players operation #Base_health_Regen stats += #health_regen reforgeStats
scoreboard players operation #Base_vitality stats += #vitality reforgeStats
scoreboard players operation #Base_true_def stats += #true_def reforgeStats
## Misc
scoreboard players operation #Base_speed stats += #speed reforgeStats
scoreboard players operation #Base_scc stats += #scc reforgeStats
scoreboard players operation #Base_magic_find stats += #magic_find reforgeStats
scoreboard players operation #Base_pet_luck stats += #pet_luck reforgeStats
scoreboard players operation #Base_fishing_speed stats += #fishing_speed reforgeStats
## Wisdom
scoreboard players operation #Base_wisdom_combat stats += #wisdom_combat reforgeStats
scoreboard players operation #Base_wisdom_mining stats += #wisdom_mining reforgeStats
scoreboard players operation #Base_wisdom_farming stats += #wisdom_farming reforgeStats
scoreboard players operation #Base_wisdom_foraging stats += #wisdom_foraging reforgeStats
scoreboard players operation #Base_wisdom_fishing stats += #wisdom_fishing reforgeStats
scoreboard players operation #Base_wisdom_enchanting stats += #wisdom_enchanting reforgeStats
scoreboard players operation #Base_wisdom_alchemy stats += #wisdom_alchemy reforgeStats
scoreboard players operation #Base_wisdom_carpentry stats += #wisdom_carpentry reforgeStats
scoreboard players operation #Base_wisdom_rune stats += #wisdom_rune reforgeStats
scoreboard players operation #Base_wisdom_social stats += #wisdom_social reforgeStats
## Gathering
scoreboard players operation #Base_mining_speed stats += #wisdom_combat reforgeStats
scoreboard players operation #Base_breaking_power stats += #wisdom_mining reforgeStats
scoreboard players operation #Base_pristine stats += #wisdom_farming reforgeStats
scoreboard players operation #Base_fortune_foraging stats += #wisdom_foraging reforgeStats
scoreboard players operation #Base_fortune_farming stats += #wisdom_fishing reforgeStats
scoreboard players operation #Base_fortune_mining stats += #wisdom_enchanting reforgeStats

# STAT OPERATIONS - h/fpb
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Base:{weapon:'TOOL'}}}}} run scoreboard players operation #Base_damage stats += #HPBDamage modifiers
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Base:{weapon:'TOOL'}}}}} run scoreboard players operation #Base_strength stats += #HPBDamage modifiers
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Base:{weapon:'ARMOR'}}}}} run scoreboard players operation #Base_health stats += #HPBHealth modifiers
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Base:{weapon:'ARMOR'}}}}} run scoreboard players operation #Base_defense stats += #HPBDamage modifiers