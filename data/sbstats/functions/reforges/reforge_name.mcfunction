# Apply Reforge name
item replace block 3000000 0 3000000 container.0 from entity @s weapon.mainhand
data remove storage sbstats:reforge Item.tag.prename
fill 3000000 1 3000000 3000000 1 3000000 air replace oak_sign
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'COMMON'}}}}] run setblock 3000000 1 3000000 oak_sign{Text1:'[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "white","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "white","interpret": true,"italic": false}]'}
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'UNCOMMON'}}}}] run setblock 3000000 1 3000000 oak_sign{Text1:'[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "green","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "green","interpret": true,"italic": false}]'}
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'RARE'}}}}] run setblock 3000000 1 3000000 oak_sign{Text1:'[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "blue","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "blue","interpret": true,"italic": false}]'}
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'EPIC'}}}}] run setblock 3000000 1 3000000 oak_sign{Text1:'[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "dark_purple","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "dark_purple","interpret": true,"italic": false}]'}
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'LEGENDARY'}}}}] run setblock 3000000 1 3000000 oak_sign{Text1:'[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "gold","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "gold","interpret": true,"italic": false}]'}
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'MYTHIC'}}}}] run setblock 3000000 1 3000000 oak_sign{Text1:'[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "light_purple","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "light_purple","interpret": true,"italic": false}]'}
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'DIVINE'}}}}] run setblock 3000000 1 3000000 oak_sign{Text1:'[{"nbt":"SelectedItem.tag.Upgrades.reforge.type","storage":"sbstats:reforge","color": "aqua","italic": false},{"text": " "},{"nbt":"Name","storage": "sbstats:item_name","color": "aqua","interpret": true,"italic": false}]'}

# Apply name changes
data modify storage sbstats:reforge Item.tag.prename set from block 3000000 1 3000000 Text1
item modify block 3000000 0 3000000 container.0 sbstats:item_name
item replace entity @s weapon.mainhand from block 3000000 0 3000000 container.0