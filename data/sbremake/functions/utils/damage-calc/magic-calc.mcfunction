data remove storage sbremake:data PlayerData
data remove storage sbremake:data DamageCalc.Ability
scoreboard players set DamageCalc.Scaling fakePlayers 0
scoreboard players set DamageCalc.Intelligence fakePlayers 0

scoreboard players set DamageCalc.in fakePlayers 4

data modify storage sbremake:data PlayerData set from entity @a[limit=1]
data modify storage sbremake:data DamageCalc.Ability set from storage sbremake:data PlayerData.SelectedItem.tag.Abilities[0]

execute store result score DamageCalc.out fakePlayers run scoreboard players get DamageCalc.in fakePlayers
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Abilty Damage (base): ","color": "white"},{"score":{"name": "DamageCalc.in","objective": "fakePlayers"},"color": "gold"}]

execute store result score DamageCalc.Scaling fakePlayers run data get storage sbremake:data DamageCalc.Ability.scaling 100
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Abilty Scaling: ","color": "white"},{"score":{"name": "DamageCalc.Scaling","objective": "fakePlayers"},"color": "gold"}]

execute store result score DamageCalc.Intelligence fakePlayers run scoreboard players get @a[limit=1] maxMana
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Intelligence: ","color": "white"},{"score":{"name": "DamageCalc.Intelligence","objective": "fakePlayers"},"color": "gold"}]

scoreboard players remove DamageCalc.Intelligence fakePlayers 1000
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Post-mortem Intelligence: ","color": "white"},{"score":{"name": "DamageCalc.Intelligence","objective": "fakePlayers"},"color": "gold"}]
