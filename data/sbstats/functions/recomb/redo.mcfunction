data remove storage sbstats:reforge Item.tag.Upgrades.reforge.stats

execute if entity @s[nbt={SelectedItem:{tag:{Upgrades:{reforge:{type:'Godlike'}}}}}] run function sbstats:reforges/reforges/godlike
execute if entity @s[nbt={SelectedItem:{tag:{Upgrades:{reforge:{type:'Creative'}}}}}] run function sbstats:reforges/reforges/creative
execute if entity @s[nbt={SelectedItem:{tag:{Upgrades:{reforge:{type:'Trustworthy'}}}}}] run function sbstats:reforges/reforges/trustworthy
execute if entity @s[nbt={SelectedItem:{tag:{Upgrades:{reforge:{type:'Totally Balanced'}}}}}] run function sbstats:reforges/reforges/totally_balanced

execute if entity @e[tag=!recombLoreBuilder] run function sbstats:recomb/bonus_reforge
tag @s remove recombLoreBuilder