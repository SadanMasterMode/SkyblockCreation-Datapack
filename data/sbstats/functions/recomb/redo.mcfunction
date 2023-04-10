# Debug Reforges
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Godlike'}}}}}} run function sbstats:reforges/reforges/godlike
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Creative'}}}}}} run function sbstats:reforges/reforges/creative
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Trustworthy'}}}}}} run function sbstats:reforges/reforges/trustworthy
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Totally Balanced'}}}}}} run function sbstats:reforges/reforges/totally_balanced

# Sword Reforges
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Epic'}}}}}} run function sbstats:reforges/reforges/swords/epic
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Fair'}}}}}} run function sbstats:reforges/reforges/swords/fair
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Fast'}}}}}} run function sbstats:reforges/reforges/swords/fast
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Gentle'}}}}}} run function sbstats:reforges/reforges/swords/gentle
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Heroic'}}}}}} run function sbstats:reforges/reforges/swords/heroic
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Legendary'}}}}}} run function sbstats:reforges/reforges/swords/legendary
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Odd'}}}}}} run function sbstats:reforges/reforges/swords/odd
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Sharp'}}}}}} run function sbstats:reforges/reforges/swords/sharp
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Spicy'}}}}}} run function sbstats:reforges/reforges/swords/spicy

# Bow Reforges
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Awkward'}}}}}} run function sbstats:reforges/reforges/bows/awkward
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Deadly'}}}}}} run function sbstats:reforges/reforges/bows/deadly
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Fine'}}}}}} run function sbstats:reforges/reforges/bows/fine
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Grand'}}}}}} run function sbstats:reforges/reforges/bows/grand
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Hasty'}}}}}} run function sbstats:reforges/reforges/bows/hasty
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Neat'}}}}}} run function sbstats:reforges/reforges/bows/neat
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Rapid'}}}}}} run function sbstats:reforges/reforges/bows/rapid
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Rich'}}}}}} run function sbstats:reforges/reforges/bows/rich
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Unreal'}}}}}} run function sbstats:reforges/reforges/bows/unreal

# Armor Reforges
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Clean'}}}}}} run function sbstats:reforges/reforges/armor/clean
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Fierce'}}}}}} run function sbstats:reforges/reforges/armor/fierce
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Heavy'}}}}}} run function sbstats:reforges/reforges/armor/heavy
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Light'}}}}}} run function sbstats:reforges/reforges/armor/light
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Mythic'}}}}}} run function sbstats:reforges/reforges/armor/mythic
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Pure'}}}}}} run function sbstats:reforges/reforges/armor/pure
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Titanic'}}}}}} run function sbstats:reforges/reforges/armor/titanic
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Smart'}}}}}} run function sbstats:reforges/reforges/armor/smart
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforge:{type:'Wise'}}}}}} run function sbstats:reforges/reforges/armor/wise

execute if entity @s[tag=!recombLoreBuilder] if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforged:1b}}}}} run function sbstats:recomb/bonus_reforge

execute unless data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforged:1b}}}}} run function sbstats:reforges/lore_builder
tag @s remove recombLoreBuilder