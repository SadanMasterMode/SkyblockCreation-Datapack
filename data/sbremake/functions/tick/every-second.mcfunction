schedule clear sbremake:tick/every-second

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

# Juju
scoreboard players set #juju-max-cd fakePlayers 10
execute if score #bonus-atk-speed stats matches 20.. run scoreboard players remove #juju-max-cd fakePlayers 1
execute if score #bonus-atk-speed stats matches 40.. run scoreboard players remove #juju-max-cd fakePlayers 1
execute if score #bonus-atk-speed stats matches 60.. run scoreboard players remove #juju-max-cd fakePlayers 1
execute if score #bonus-atk-speed stats matches 80.. run scoreboard players remove #juju-max-cd fakePlayers 1
execute if score #bonus-atk-speed stats matches 100.. run scoreboard players remove #juju-max-cd fakePlayers 1

schedule function sbremake:tick/every-second 1s append