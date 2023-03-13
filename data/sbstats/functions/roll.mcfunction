# Change max # of reforge rolls
scoreboard players set roll constants 4
data remove storage sbstats:reforge Item.tag.Upgrades.reforge.stats

# Generate Random Number
summon armor_stand 0 100 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["random_number"]}
execute store result score reforge_roll uuid run data get entity @e[tag=random_number,limit=1] UUID[0]
scoreboard players operation reforge_roll uuid %= roll constants
kill @e[tag=random_number]

# Apply Stats

data modify entity @s SelectedItem.tag.Upgrades.reforge.stats set value ''
execute if score reforge_roll uuid matches 0 run function sbstats:reforges/reforges/godlike
execute if score reforge_roll uuid matches 1 run function sbstats:reforges/reforges/creative
execute if score reforge_roll uuid matches 2 run function sbstats:reforges/reforges/trustworthy
execute if score reforge_roll uuid matches 3 run function sbstats:reforges/reforges/totally_balanced