data remove storage sbremake:actionbar Item.tag.actionbar

# Base
## Health
setblock 3000000 1 3000000 oak_sign{Text1:'[{"score":{"name":"@p","objective":"healthVis"},"color":"red"},{"text":"/100❤ ","color":"red"}]'} destroy
data modify storage sbremake:actionbar Item.tag.actionbar append from block 3000000 1 3000000 Text1
## Defense
execute if score @s defense matches 1.. run setblock 3000000 1 3000000 oak_sign{Text1:'[{"score":{"name":"@p","objective":"defense"},"color": "green"},{"text": "❈ Defense ","color": "green"}]'} destroy
execute if score @s defense matches 1.. run data modify storage sbremake:actionbar Item.tag.actionbar append from block 3000000 1 3000000 Text1
## Mana
setblock 3000000 1 3000000 oak_sign{Text1:'[{"score":{"name":"@p","objective":"mana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@p","objective":"maxMana"},"color":"aqua"},{"text":"✎","color":"aqua"}]'} destroy
data modify storage sbremake:actionbar Item.tag.actionbar append from block 3000000 1 3000000 Text1

# Angel's Ascent
## No Charges
execute if score @s ascendCharge matches 0 run setblock 3000000 1 3000000 oak_sign{Text1:'[{"text":""},{"text":"Charges:","color":"gold","bold":false},{"text":" NONE!","color":"yellow","bold":true}]'} destroy
## 1 Charge
execute if score @s ascendCharge matches 1 run setblock 3000000 1 3000000 oak_sign{Text1:'[{"text":""},{"text":"Charges:","color":"gold","bold":false},{"text":" ◈","color":"yellow","bold":false}]'} destroy
## 2 Charges
execute if score @s ascendCharge matches 2 run setblock 3000000 1 3000000 oak_sign{Text1:'[{"text":""},{"text":"Charges:","color":"gold","bold":false},{"text":" ◈◈","color":"yellow","bold":false}]'} destroy
## 3 Charges
execute if score @s ascendCharge matches 3 run setblock 3000000 1 3000000 oak_sign{Text1:'[{"text":""},{"text":"Charges:","color":"gold","bold":false},{"text":" ◈◈◈","color":"yellow","bold":false}]'} destroy
## 4 Charges
execute if score @s ascendCharge matches 4.. run setblock 3000000 1 3000000 oak_sign{Text1:'[{"text":""},{"text":"Charges:","color":"gold","bold":false},{"text":" UNLIMITED","color":"gold","bold":true}]'} destroy
#endregion
execute if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings",tag:{display:{Name:'[{"text":"Angel\'s Ascent","italic":false,"color":"gold"}]'}}}]}] run data modify storage sbremake:actionbar Item.tag.actionbar append from block 3000000 1 3000000 Text1

# Terrorwraith Cloak
## CD
execute if score @s wraithCD matches 1.. run setblock 3000000 1 3000000 oak_sign{Text1:'[{"text":""},{"score":{"name":"@p","objective":"wraithCD"},"color":"dark_gray","bold": false}]'} destroy
## No CD
execute if score @s wraithCD matches 0 run setblock 3000000 1 3000000 oak_sign{Text1:'[{"text":"READY","color": "dark_gray","bold": true}]'} destroy
#endregion
execute if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{display:{Name:'[{"text":"Terrorwraith Cloak","italic":false,"color":"gold"}]'}}}]}] run data modify storage sbremake:actionbar Item.tag.actionbar append from block 3000000 1 3000000 Text1

# Mercurius Healing
execute if entity @e[tag=mercuriusHeal,limit=1] run setblock 3000000 1 3000000 oak_sign{Text1:'[{"text": "Summons: ","color": "red","bold": false,"italic": false},{"score":{"name":"#mercuriusHeal","objective":"count"},"color":"red","bold": false,"italic": false}]'} destroy
execute if entity @e[tag=mercuriusHeal,limit=1] run data modify storage sbremake:actionbar Item.tag.actionbar append from block 3000000 1 3000000 Text1

# Display
title @s actionbar [{"nbt":"Item.tag.actionbar[]","storage":"sbremake:actionbar","interpret": true,"separator": " "}]
execute positioned 3000000 1 3000000 run kill @e[type=item,nbt={Item:{id:"minecraft:oak_sign"}},distance=..5]