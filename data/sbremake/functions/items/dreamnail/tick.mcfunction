# Main
execute as @a[scores={dreamnailRC=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'}}}}] unless score @s dreamnailCharge matches 5.. run scoreboard players add @s dreamnailCharge 1
execute as @a[scores={dreamnailRC=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'}}}}] run schedule clear sbremake:items/dreamnail/reset
execute as @a[scores={dreamnailRC=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'}}}}] run schedule function sbremake:items/dreamnail/reset 6t append
scoreboard players set @a[scores={dreamnailRC=1..}] dreamnailRC 0

execute as @a[nbt={HurtTime:10s}] run scoreboard players set @s dreamnailCharge 0

# Actionbar
execute as @a[scores={dreamnailCharge=0},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'},actionbar:1b}}}] run title @s actionbar [{"text": "| | | | | |","color": "gray","bold": false}]

execute as @a[scores={dreamnailCharge=1},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'},actionbar:1b}}}] run title @s actionbar [{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "| | | | |","color": "gray","bold": false}]

execute as @a[scores={dreamnailCharge=2},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'},actionbar:1b}}}] run title @s actionbar [{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "| | | |","color": "gray","bold": false}]

execute as @a[scores={dreamnailCharge=3},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'},actionbar:1b}}}] run title @s actionbar [{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "| | |","color": "gray","bold": false}]

execute as @a[scores={dreamnailCharge=4},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'},actionbar:1b}}}] run title @s actionbar [{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "| |","color": "gray","bold": false}]

execute as @a[scores={dreamnailCharge=5},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'},actionbar:1b}}}] run title @s actionbar [{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false}]

# Effects
execute as @a[scores={dreamnailCharge=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'},actionbar:1b}}}] run effect give @s slowness 1 100 true
execute as @a[scores={dreamnailCharge=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'},actionbar:1b}}}] at @s unless block ~ ~-0.5 ~ #sbremake:blocks run effect give @s jump_boost 1 128 true
execute as @a[scores={dreamnailCharge=0},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'},actionbar:1b}}}] run effect clear @s slowness
execute as @a[scores={dreamnailCharge=0},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'},actionbar:1b}}}] run effect clear @s jump_boost
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Dreamnail","italic":false,"color":"red"}]'},actionbar:1b}}}] at @s if block ~ ~-0.5 ~ #sbremake:blocks run effect clear @s jump_boost

# Hurt Detection
execute as @a if score @s dreamnailHurt2 > @s dreamnailHurt if score @s dreamnailCharge matches 1.. run function sbremake:items/dreamnail/hurt
execute as @a store result score @s dreamnailHurt2 run scoreboard players get @s dreamnailHurt