item modify entity @s weapon.mainhand sbstats:reforged

data modify storage sbstats:data oldnametmp.oldname set from entity @s SelectedItem.components."minecraft:item_name"
execute unless data storage sbstats:data {PlayerData:{SelectedItem:{components:{"minecraft:custom_data":{Upgrades:{reforged:1b}}}}}} run function sbstats:macros/old_name with storage sbstats:data oldnametmp

data modify storage sbstats:item_name Name set from storage sbstats:data PlayerData.SelectedItem.components."minecraft:custom_data".SBStats.OldName
data modify storage sbstats:reforge Name set from storage sbstats:data PlayerData.SelectedItem.components."minecraft:custom_data".Upgrades.reforge.type

# Apply Reforge name
data remove storage sbstats:reforge Item.components."minecraft:custom_data".prename
execute if data storage sbstats:data {PlayerData:{SelectedItem:{components:{"minecraft:custom_data":{Base:{rarity:'COMMON'}}}}}} run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"nbt":"SelectedItem.components.minecraft:custom_data.Upgrades.reforge.type","storage":"sbstats:reforge","color": "white","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "white","interpret": true,"italic": false}]'
execute if data storage sbstats:data {PlayerData:{SelectedItem:{components:{"minecraft:custom_data":{Base:{rarity:'UNCOMMON'}}}}}} run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"nbt":"SelectedItem.components.minecraft:custom_data.Upgrades.reforge.type","storage":"sbstats:reforge","color": "green","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "green","interpret": true,"italic": false}]'
execute if data storage sbstats:data {PlayerData:{SelectedItem:{components:{"minecraft:custom_data":{Base:{rarity:'RARE'}}}}}} run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"nbt":"SelectedItem.components.minecraft:custom_data.Upgrades.reforge.type","storage":"sbstats:reforge","color": "blue","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "blue","interpret": true,"italic": false}]'
execute if data storage sbstats:data {PlayerData:{SelectedItem:{components:{"minecraft:custom_data":{Base:{rarity:'EPIC'}}}}}} run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"nbt":"SelectedItem.components.minecraft:custom_data.Upgrades.reforge.type","storage":"sbstats:reforge","color": "dark_purple","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "dark_purple","interpret": true,"italic": false}]'
execute if data storage sbstats:data {PlayerData:{SelectedItem:{components:{"minecraft:custom_data":{Base:{rarity:'LEGENDARY'}}}}}} run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"nbt":"SelectedItem.components.minecraft:custom_data.Upgrades.reforge.type","storage":"sbstats:reforge","color": "gold","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "gold","interpret": true,"italic": false}]'
execute if data storage sbstats:data {PlayerData:{SelectedItem:{components:{"minecraft:custom_data":{Base:{rarity:'MYTHIC'}}}}}} run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"nbt":"SelectedItem.components.minecraft:custom_data.Upgrades.reforge.type","storage":"sbstats:reforge","color": "light_purple","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "light_purple","interpret": true,"italic": false}]'
execute if data storage sbstats:data {PlayerData:{SelectedItem:{components:{"minecraft:custom_data":{Base:{rarity:'DIVINE'}}}}}} run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"nbt":"SelectedItem.components.minecraft:custom_data.Upgrades.reforge.type","storage":"sbstats:reforge","color": "aqua","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "aqua","interpret": true,"italic": false}]'

# Apply name changes
data modify storage sbstats:reforge Item.components."minecraft:custom_data".prename set from block 3000000 1 3000000 front_text.messages[0]
item modify entity @s weapon.mainhand [{"function":"minecraft:set_name","entity":"this","target":"custom_name","name":{"nbt":"Item.components.\"minecraft:custom_data\".prename","storage":"sbstats:reforge","interpret":true}}]


# Lore Builder
function sbstats:reforges/lore_builder
