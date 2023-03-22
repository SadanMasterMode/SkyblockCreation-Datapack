# Get H/FPB count
execute store result score #HPB modifiers run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.HotPotatoBooks
execute store result score #FPB modifiers run data get storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.FumingPotatoBooks

# Add both together
scoreboard players operation #HPB modifiers += #FPB modifiers

# Seperate into two subscores
execute store result score #HPBHealth modifiers run scoreboard players get #HPB modifiers
execute store result score #HPBDamage modifiers run scoreboard players get #HPB modifiers

# Multiply by the appropriate const
scoreboard players operation #HPBHealth modifiers *= #4 const
scoreboard players operation #HPBDamage modifiers *= #2 const