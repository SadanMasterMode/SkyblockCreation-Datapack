execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Godlike'}}}}}} run function sbstats:reforges/reforges/godlike
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Creative'}}}}}} run function sbstats:reforges/reforges/creative
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Trustworthy'}}}}}} run function sbstats:reforges/reforges/trustworthy
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Totally Balanced'}}}}}} run function sbstats:reforges/reforges/totally_balanced

execute if entity @s[tag=!recombLoreBuilder] if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforged:1b}}}}} run function sbstats:recomb/bonus_reforge

execute unless data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforged:1b}}}}} run function sbstats:reforges/lore_builder
tag @s remove recombLoreBuilder