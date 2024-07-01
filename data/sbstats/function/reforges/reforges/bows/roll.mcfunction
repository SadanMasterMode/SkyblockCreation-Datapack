# Change max # of reforge rolls
scoreboard players set roll constants 4
data remove storage sbstats:reforge Item.components."minecraft:custom_data".Upgrades.reforge.stats

# Generate Random Number
function sbremake:utils/random_number
scoreboard players operation @a rand %= #10 const

# Apply Stats

data remove storage sbstats:data PlayerData.SelectedItem.components."minecraft:custom_data".Upgrades.reforge.stats
execute if score @a[limit=1] rand matches 0 run function sbstats:reforges/reforges/bows/awkward
execute if score @a[limit=1] rand matches 1 run function sbstats:reforges/reforges/bows/deadly
execute if score @a[limit=1] rand matches 2 run function sbstats:reforges/reforges/bows/fine
execute if score @a[limit=1] rand matches 3 run function sbstats:reforges/reforges/bows/grand
execute if score @a[limit=1] rand matches 4 run function sbstats:reforges/reforges/bows/hasty
execute if score @a[limit=1] rand matches 5 run function sbstats:reforges/reforges/bows/neat
execute if score @a[limit=1] rand matches 6 run function sbstats:reforges/reforges/bows/rapid
execute if score @a[limit=1] rand matches 7 run function sbstats:reforges/reforges/bows/rich
execute if score @a[limit=1] rand matches 8 run function sbstats:reforges/reforges/bows/unreal
execute if score @a[limit=1] rand matches 9 run function sbstats:reforges/reforges/bows/nimble