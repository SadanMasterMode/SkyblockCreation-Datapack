# Mana
## Find out 2% of mana
scoreboard players operation #temp mana = @a maxMana
scoreboard players operation #temp mana /= #50 const
## Find out 2% less than max mana
scoreboard players operation #temp maxMana = @a maxMana
scoreboard players operation #temp maxMana -= #temp mana

## Add mana
execute unless score @a[limit=1] mana >= #temp maxMana run scoreboard players operation @a[limit=1] mana += #temp mana
execute if score @a[limit=1] mana >= #temp maxMana run scoreboard players operation @a[limit=1] mana = @a[limit=1] maxMana

## Mana buffs
### Overflex
execute unless score @a[limit=1] mana >= #temp maxMana run scoreboard players operation @a[limit=1,tag=near-overflux] mana += #temp mana
execute if score @a[limit=1] mana >= #temp maxMana run scoreboard players operation @a[limit=1,tag=near-overflux] mana = @a[limit=1] maxMana
### Manaflux
scoreboard players operation #manaflux mana = #temp mana
scoreboard players operation #manaflux mana *= #5 const
scoreboard players operation #manaflux mana /= #10 const
execute unless score @a[limit=1] mana >= #temp maxMana run scoreboard players operation @a[limit=1,tag=near-manaflux,tag=!near-overflux] mana += #manaflux mana

# Power Orb Lives

## Overflux
execute as f9bfe799-3c1d-484c-9ed4-28333bc49fda run scoreboard players remove @s[scores={life=1..}] life 1

execute store result score #overflux-life fakePlayers run scoreboard players get f9bfe799-3c1d-484c-9ed4-28333bc49fda life
data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"text":"Overflux ","color":"dark_purple"},{"score":{"objective":"fakePlayers","name": "#overflux-life"},"color":"yellow"},{"text":"s","color":"yellow"}]'
data modify entity f9bfe799-3c1d-484c-9ed4-28333bc49fda CustomName set from block 3000000 1 3000000 front_text.messages[0]

## Manaflux
execute as e42a9d23-f22d-4393-bb01-6676a5140841 run scoreboard players remove @s[scores={life=1..}] life 1

execute store result score #manaflux-life fakePlayers run scoreboard players get e42a9d23-f22d-4393-bb01-6676a5140841 life
data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"text":"Mana Flux ","color":"blue"},{"score":{"objective":"fakePlayers","name": "#manaflux-life"},"color":"yellow"},{"text":"s","color":"yellow"}]'
data modify entity e42a9d23-f22d-4393-bb01-6676a5140841 CustomName set from block 3000000 1 3000000 front_text.messages[0]

## Radiant
execute as d00ad08c-6d83-4816-95ff-33b3d23d312e run scoreboard players remove @s[scores={life=1..}] life 1

execute store result score #radiant-life fakePlayers run scoreboard players get d00ad08c-6d83-4816-95ff-33b3d23d312e life
data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"text":"Radiant ","color":"green"},{"score":{"objective":"fakePlayers","name": "#radiant-life"},"color":"yellow"},{"text":"s","color":"yellow"}]'
data modify entity d00ad08c-6d83-4816-95ff-33b3d23d312e CustomName set from block 3000000 1 3000000 front_text.messages[0]

# Function Calls
execute as @a run function sbremake:achievements/check
execute as @a run function sbremake:utils/player_gamemode

schedule function sbremake:tick/every-second 1s