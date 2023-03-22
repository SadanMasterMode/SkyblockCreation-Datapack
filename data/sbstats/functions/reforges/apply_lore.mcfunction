item modify entity @s weapon.mainhand sbstats:reforged

execute unless data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Upgrades:{reforged:1b}}}}} run item modify entity @s weapon.mainhand sbstats:old_name
data modify storage sbstats:item_name Name set from storage sbstats:data PlayerData.SelectedItem.tag.SBStats.OldName
data modify storage sbstats:reforge Name set from storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.reforge.type

# Apply Reforge name
data remove storage sbstats:reforge Item.tag.prename
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Base:{rarity:'COMMON'}}}}} run data modify block 3000000 1 3000000 Text1 set value '[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "white","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "white","interpret": true,"italic": false}]'
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Base:{rarity:'UNCOMMON'}}}}} run data modify block 3000000 1 3000000 Text1 set value '[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "green","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "green","interpret": true,"italic": false}]'
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Base:{rarity:'RARE'}}}}} run data modify block 3000000 1 3000000 Text1 set value '[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "blue","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "blue","interpret": true,"italic": false}]'
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Base:{rarity:'EPIC'}}}}} run data modify block 3000000 1 3000000 Text1 set value '[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "dark_purple","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "dark_purple","interpret": true,"italic": false}]'
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Base:{rarity:'LEGENDARY'}}}}} run data modify block 3000000 1 3000000 Text1 set value '[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "gold","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "gold","interpret": true,"italic": false}]'
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Base:{rarity:'MYTHIC'}}}}} run data modify block 3000000 1 3000000 Text1 set value '[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "light_purple","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "light_purple","interpret": true,"italic": false}]'
execute if data storage sbstats:data {PlayerData:{SelectedItem:{tag:{Base:{rarity:'DIVINE'}}}}} run data modify block 3000000 1 3000000 Text1 set value '[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "aqua","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "aqua","interpret": true,"italic": false}]'

# Apply name changes
data modify storage sbstats:reforge Item.tag.prename set from block 3000000 1 3000000 Text1
item modify entity @s weapon.mainhand sbstats:item_name

# Lore Builder
function sbstats:reforges/lore_builder