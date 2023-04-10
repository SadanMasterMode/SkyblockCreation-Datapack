# Change max # of reforge rolls
scoreboard players set roll constants 4
data remove storage sbstats:reforge Item.tag.Upgrades.reforge.stats

# Generate Random Number
function sbremake:utils/random_number
scoreboard players operation @a rand %= #9 const

# Apply Stats

data remove storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.stats
execute if score @a[limit=1] rand matches 0 run function sbstats:reforges/reforges/armor/clean
execute if score @a[limit=1] rand matches 1 run function sbstats:reforges/reforges/armor/fierce
execute if score @a[limit=1] rand matches 2 run function sbstats:reforges/reforges/armor/heavy
execute if score @a[limit=1] rand matches 3 run function sbstats:reforges/reforges/armor/light
execute if score @a[limit=1] rand matches 4 run function sbstats:reforges/reforges/armor/mythic
execute if score @a[limit=1] rand matches 5 run function sbstats:reforges/reforges/armor/pure
execute if score @a[limit=1] rand matches 6 run function sbstats:reforges/reforges/armor/titanic
execute if score @a[limit=1] rand matches 7 run function sbstats:reforges/reforges/armor/smart
execute if score @a[limit=1] rand matches 8 run function sbstats:reforges/reforges/armor/wise