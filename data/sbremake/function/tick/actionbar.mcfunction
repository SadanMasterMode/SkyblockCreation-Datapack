data remove storage sbremake:actionbar Item.tag.actionbar

# Base
## Health
data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"score":{"name":"@a[limit=1]","objective":"healthVis"},"color":"red"},{"text":"/100❤   ","color":"red"}]' 
data modify storage sbremake:actionbar Item.tag.actionbar append from block 3000000 1 3000000 front_text.messages[0]
## Defense
execute if score @s defense matches 1.. unless data storage sbremake:data Actionbar.AbilityUsage run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"score":{"name":"@a[limit=1]","objective":"defense"},"color": "green"},{"text": "❈ Defense   ","color": "green"}]' 
execute if score @s defense matches 1.. unless data storage sbremake:data Actionbar.AbilityUsage run data modify storage sbremake:actionbar Item.tag.actionbar append from block 3000000 1 3000000 front_text.messages[0]
## Mana Usage
execute if data storage sbremake:data Actionbar.AbilityUsage run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"nbt":"Actionbar.AbilityUsage","storage":"sbremake:data","interpret":true}]' 
execute if data storage sbremake:data Actionbar.AbilityUsage run data modify storage sbremake:actionbar Item.tag.actionbar append from block 3000000 1 3000000 front_text.messages[0]
## Mana
data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"score":{"name":"@a[limit=1]","objective":"mana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@a[limit=1]","objective":"maxMana"},"color":"aqua"},{"text":"✎   ","color":"aqua"}]' 
data modify storage sbremake:actionbar Item.tag.actionbar append from block 3000000 1 3000000 front_text.messages[0]

# Angel's Ascent
## No Charges
execute if score @s ascendCharge matches 0 run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"text":"Charges:","color":"gold","bold":false},{"text":" NONE!   ","color":"yellow","bold":true}]' 
## 1 Charge
execute if score @s ascendCharge matches 1 run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"text":"Charges:","color":"gold","bold":false},{"text":" ◈   ","color":"yellow","bold":false}]' 
## 2 Charges
execute if score @s ascendCharge matches 2 run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"text":"Charges:","color":"gold","bold":false},{"text":" ◈◈   ","color":"yellow","bold":false}]' 
## 3 Charges
execute if score @s ascendCharge matches 3 run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"text":"Charges:","color":"gold","bold":false},{"text":" ◈◈◈   ","color":"yellow","bold":false}]' 
## 4 Charges
execute if score @s ascendCharge matches 4.. run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"text":"Charges:","color":"gold","bold":false},{"text":" UNLIMITED   ","color":"gold","bold":true}]' 
#endregion
execute if entity @s[predicate=sbremake:items/armor/ascent/wearing] run data modify storage sbremake:actionbar Item.tag.actionbar append from block 3000000 1 3000000 front_text.messages[0]

# Terrorwraith Cloak
## CD
execute if score @s wraithCD matches 1.. run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"score":{"name":"@a[limit=1]","objective":"wraithCD"},"color":"dark_gray","bold": false},{"text":"   "}]' 
## No CD
execute if score @s wraithCD matches 0 run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"text":"READY","color": "dark_gray","bold": true},{"text":"   "}]' 
#endregion
execute if entity @s[predicate=sbremake:items/armor/terrorwraith/wearing] run data modify storage sbremake:actionbar Item.tag.actionbar append from block 3000000 1 3000000 front_text.messages[0]

# Mercurius Healing
execute if entity @e[tag=mercuriusHeal,limit=1] run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"text": "Summons: ","color": "red","bold": false,"italic": false},{"score":{"name":"#mercuriusHeal","objective":"count"},"color":"red","bold": false,"italic": false}]' 
execute if entity @e[tag=mercuriusHeal,limit=1] run data modify storage sbremake:actionbar Item.tag.actionbar append from block 3000000 1 3000000 front_text.messages[0]

# Display
title @s actionbar [{"nbt":"Item.tag.actionbar[]","storage":"sbremake:actionbar","interpret": true,"separator": " "}]