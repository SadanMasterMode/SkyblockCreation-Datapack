advancement revoke @s only sbremake:stats/inventory_changed
execute store result score #old-slot fakePlayers run data get storage sbremake:data PlayerData.SelectedItemSlot

data remove storage sbremake:data PlayerData
data modify storage sbremake:data PlayerData set from entity @s

# Detect if a slot was changed then get the item stats

function sbremake:utils/stats/base-stats/clear

execute if data storage sbremake:data PlayerData.SelectedItem run function sbremake:utils/stats/base-stats/item-stats
execute if data storage sbremake:data PlayerData.SelectedItem.tag.Upgrades.reforge run function sbremake:utils/stats/modifier-stats/item-reforge

execute if data storage sbremake:data PlayerData.Inventory[{Slot:103b}] run function sbremake:utils/stats/base-stats/helmet-stats
execute if data storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.Upgrades.reforge run function sbremake:utils/stats/modifier-stats/helmet-reforge

execute if data storage sbremake:data PlayerData.Inventory[{Slot:102b}] run function sbremake:utils/stats/base-stats/chestplate-stats
execute if data storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.Upgrades.reforge run function sbremake:utils/stats/modifier-stats/chestplate-reforge

execute if data storage sbremake:data PlayerData.Inventory[{Slot:101b}] run function sbremake:utils/stats/base-stats/leggings-stats
execute if data storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.Upgrades.reforge run function sbremake:utils/stats/modifier-stats/leggings-reforge

execute if data storage sbremake:data PlayerData.Inventory[{Slot:100b}] run function sbremake:utils/stats/base-stats/boots-stats
execute if data storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.Upgrades.reforge run function sbremake:utils/stats/modifier-stats/leggings-reforge

function sbremake:utils/stats/atk-speed
function sbremake:utils/stats/strength
function sbremake:utils/stats/crit-damage
function sbremake:utils/stats/crit-chance

# Misc Stuff (activated every inv change)

## Juju
scoreboard players set #juju-max-cd fakePlayers 10
execute if score #bonus-atk-speed stats matches 20.. run scoreboard players remove #juju-max-cd fakePlayers 1
execute if score #bonus-atk-speed stats matches 40.. run scoreboard players remove #juju-max-cd fakePlayers 1
execute if score #bonus-atk-speed stats matches 60.. run scoreboard players remove #juju-max-cd fakePlayers 1
execute if score #bonus-atk-speed stats matches 80.. run scoreboard players remove #juju-max-cd fakePlayers 1
execute if score #bonus-atk-speed stats matches 100.. run scoreboard players remove #juju-max-cd fakePlayers 1