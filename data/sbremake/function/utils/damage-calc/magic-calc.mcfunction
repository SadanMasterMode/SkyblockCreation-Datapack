data remove storage sbremake:data PlayerData
data remove storage sbremake:data DamageCalc.Ability
scoreboard players set DamageCalc.Scaling fakePlayers 0
scoreboard players set DamageCalc.Intelligence fakePlayers 0

data modify storage sbremake:data PlayerData set from entity @a[limit=1]
data modify storage sbremake:data DamageCalc.Ability set from storage sbremake:data PlayerData.SelectedItem.components."minecraft:custom_data".Abilities[0]

execute store result score DamageCalc.out fakePlayers run data get storage sbremake:data DamageCalc.Ability.damage.value
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Abilty Damage (base): ","color": "white"},{"score":{"name": "DamageCalc.out","objective": "fakePlayers"},"color": "gold"}]

execute store result score DamageCalc.Scaling fakePlayers run data get storage sbremake:data DamageCalc.Ability.scaling 100
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Abilty Scaling * 10: ","color": "white"},{"score":{"name": "DamageCalc.Scaling","objective": "fakePlayers"},"color": "gold"}]

execute store result score DamageCalc.Intelligence fakePlayers run scoreboard players get @a[limit=1] maxMana
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Intelligence: ","color": "white"},{"score":{"name": "DamageCalc.Intelligence","objective": "fakePlayers"},"color": "gold"}]

scoreboard players remove DamageCalc.Intelligence fakePlayers 1000
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Intelligence - 1000: ","color": "white"},{"score":{"name": "DamageCalc.Intelligence","objective": "fakePlayers"},"color": "gold"}]

scoreboard players operation DamageCalc.Intelligence fakePlayers *= #10 const
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Intelligence * 10: ","color": "white"},{"score":{"name": "DamageCalc.Intelligence","objective": "fakePlayers"},"color": "gold"}]
scoreboard players operation DamageCalc.Intelligence fakePlayers /= #100 const
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Intelligence / 100: ","color": "white"},{"score":{"name": "DamageCalc.Intelligence","objective": "fakePlayers"},"color": "gold"}]
scoreboard players operation DamageCalc.Intelligence fakePlayers /= #10 const
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Intelligence / 10: ","color": "white"},{"score":{"name": "DamageCalc.Intelligence","objective": "fakePlayers"},"color": "gold"}]
scoreboard players operation DamageCalc.Intelligence fakePlayers *= DamageCalc.Scaling fakePlayers
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Intelligence Times Scaling: ","color": "white"},{"score":{"name": "DamageCalc.Intelligence","objective": "fakePlayers"},"color": "gold"}]

scoreboard players add DamageCalc.Intelligence fakePlayers 100
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Intelligence + 100: ","color": "white"},{"score":{"name": "DamageCalc.Intelligence","objective": "fakePlayers"},"color": "gold"}]

scoreboard players operation DamageCalc.out fakePlayers *= #10 const
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Damage * 10: ","color": "white"},{"score":{"name": "DamageCalc.Intelligence","objective": "fakePlayers"},"color": "gold"}]

scoreboard players operation DamageCalc.out fakePlayers *= DamageCalc.Intelligence fakePlayers
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Damage Times Intelligence: ","color": "white"},{"score":{"name": "DamageCalc.out","objective": "fakePlayers"},"color": "gold"}]
scoreboard players operation DamageCalc.out fakePlayers /= #100 const
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Damage Over 100: ","color": "white"},{"score":{"name": "DamageCalc.out","objective": "fakePlayers"},"color": "gold"}]

scoreboard players operation #int damageHologram = DamageCalc.out fakePlayers
scoreboard players operation #decimal damageHologram = #int damageHologram
scoreboard players operation #int damageHologram /= #10 const
scoreboard players operation #decimal damageHologram %= #10 const

execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Final Damage: ","color": "white","bold": true,"underlined": true},{"score":{"name":"#int","objective":"damageHologram"},"color": "gold","bold": true,"underlined": true},{"text":".","color": "gold","bold": true,"underlined": true},{"score":{"name":"#decimal","objective":"damageHologram"},"color": "gold","bold": true,"underlined": true}]