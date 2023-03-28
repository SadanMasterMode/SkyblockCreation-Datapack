execute store result score @s maxHealthMod run scoreboard players get @s maxHealth
execute store result score @s defenseMod run scoreboard players get @s defense

execute if score #wisdom-armor fakePlayers matches 0 run tellraw @s [{"text":"Armor of Wisdom: ","color":"aqua","bold": true},{"text": "Set bonus activated!","color": "green","bold": false}]

scoreboard players set #wisdom-armor fakePlayers 1
scoreboard players set #wisdom-mana fakePlayers 0

scoreboard players operation @s maxHealthMod /= #100 const
scoreboard players operation @s defenseMod /= #100 const

scoreboard players operation @s maxHealthMod *= #25 const
scoreboard players operation @s defenseMod *= #25 const

scoreboard players operation @s maxHealthMod += @s defenseMod
scoreboard players operation #wisdom-mana fakePlayers += @s maxHealthMod