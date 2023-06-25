data remove storage sbremake:data PlayerData
data remove storage sbremake:data DamageCalc.Ability
scoreboard players set DamageCalc.Damage fakePlayers 0
scoreboard players set DamageCalc.Strength fakePlayers 0
scoreboard players set DamageCalc.Crit-Damage fakePlayers 0
scoreboard players set DamageCalc.Additive-Multi fakePlayers 0
scoreboard players set DamageCalc.Multiplicitive-Multi fakePlayers 0

data modify storage sbremake:data PlayerData set from entity @a[limit=1]
scoreboard players operation DamageCalc.Damage fakePlayers = @a damage
scoreboard players operation DamageCalc.Strength fakePlayers = #total-strength stats
scoreboard players operation DamageCalc.Crit-Damage fakePlayers = #total-crit_damage stats

execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Damage (base): ","color": "white"},{"score":{"name": "DamageCalc.Damage","objective": "fakePlayers"},"color": "gold"}]
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Strength (base): ","color": "white"},{"score":{"name": "DamageCalc.Strength","objective": "fakePlayers"},"color": "gold"}]
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Crit Damage (base): ","color": "white"},{"score":{"name": "DamageCalc.Crit-Damage","objective": "fakePlayers"},"color": "gold"}]

# Scale damage up
scoreboard players operation DamageCalc.Damage fakePlayers *= #100 const
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Damage (scaled up): ","color": "white"},{"score":{"name": "DamageCalc.Damage","objective": "fakePlayers"},"color": "gold"}]
scoreboard players operation DamageCalc.Damage fakePlayers += #5000 const
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Damage (+ min): ","color": "white"},{"score":{"name": "DamageCalc.Damage","objective": "fakePlayers"},"color": "gold"}]

# Add base to CD/Str
scoreboard players operation DamageCalc.Strength fakePlayers += #100 const
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Strength (+ min): ","color": "white"},{"score":{"name": "DamageCalc.Strength","objective": "fakePlayers"},"color": "gold"}]
scoreboard players operation DamageCalc.Crit-Damage fakePlayers += #100 const
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Crit Damage (+ min): ","color": "white"},{"score":{"name": "DamageCalc.Crit-Damage","objective": "fakePlayers"},"color": "gold"}]

# Multiply dmg by str
scoreboard players operation DamageCalc.Damage fakePlayers *= DamageCalc.Strength fakePlayers
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Damage (times str): ","color": "white"},{"score":{"name": "DamageCalc.Damage","objective": "fakePlayers"},"color": "gold"}]

# Scale down
scoreboard players operation DamageCalc.Damage fakePlayers /= #100 const
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Damage (scaled down): ","color": "white"},{"score":{"name": "DamageCalc.Damage","objective": "fakePlayers"},"color": "gold"}]

# Scale down again
scoreboard players operation DamageCalc.Damage fakePlayers /= #100 const
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Damage (scaled down again): ","color": "white"},{"score":{"name": "DamageCalc.Damage","objective": "fakePlayers"},"color": "gold"}]

# Crit attack or not
function sbremake:utils/random_number
scoreboard players operation @a rand %= #100 const
execute if score @a[limit=1] rand <= #total-crit_chance stats run scoreboard players set DamageCalc.Crit fakePlayers 1
execute unless score @a[limit=1] rand <= #total-crit_chance stats run scoreboard players set DamageCalc.Crit fakePlayers 0

# Multiply dmg by cd
execute if score DamageCalc.Crit fakePlayers matches 1 run scoreboard players operation DamageCalc.Damage fakePlayers *= DamageCalc.Crit-Damage fakePlayers
execute if score #debug-mode fakePlayers matches 1 if score DamageCalc.Crit fakePlayers matches 1 run tellraw @a [{"text": "Damage (times cd): ","color": "white"},{"score":{"name": "DamageCalc.Damage","objective": "fakePlayers"},"color": "gold"}]

# Scale down
execute if score DamageCalc.Crit fakePlayers matches 1 run scoreboard players operation DamageCalc.Damage fakePlayers /= #100 const
execute if score #debug-mode fakePlayers matches 1 if score DamageCalc.Crit fakePlayers matches 1 run tellraw @a [{"text": "Damage (scaled down): ","color": "white"},{"score":{"name": "DamageCalc.Damage","objective": "fakePlayers"},"color": "gold"}]

# add multipliers later.............

# Scale down
scoreboard players operation DamageCalc.Damage fakePlayers /= #10 const
execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Damage (scaled down post multi.): ","color": "white"},{"score":{"name": "DamageCalc.Damage","objective": "fakePlayers"},"color": "gold"}]
scoreboard players operation DamageCalc.out fakePlayers = DamageCalc.Damage fakePlayers

scoreboard players operation #int damageHologram = DamageCalc.out fakePlayers
scoreboard players operation #decimal damageHologram = #int damageHologram
scoreboard players operation #int damageHologram /= #10 const
scoreboard players operation #decimal damageHologram %= #10 const

execute if score #debug-mode fakePlayers matches 1 run tellraw @a [{"text": "Final Damage: ","color": "white","bold": true,"underlined": true},{"score":{"name":"#int","objective":"damageHologram"},"color": "gold","bold": true,"underlined": true},{"text":".","color": "gold","bold": true,"underlined": true},{"score":{"name":"#decimal","objective":"damageHologram"},"color": "gold","bold": true,"underlined": true}]

scoreboard players operation @a damageHologram = DamageCalc.out fakePlayers