execute store result score @p maxHealthMod run scoreboard players get @p maxHealth
execute store result score @p defenseMod run scoreboard players get @p defense

execute if score @p wisdomArmor matches 0 run scoreboard players set @p manaWarn 1
execute if score @p wisdomArmor matches 0 run schedule clear sbremake:manareset
execute if score @p wisdomArmor matches 0 run schedule function sbremake:manareset 1s append
execute if score @p wisdomArmor matches 0 run title @a actionbar [{"text":"Armor of Wisdom: ","color":"aqua","bold": true},{"text": "Set bonus activated!","color": "green","bold": false}]
scoreboard players set @p wisdom 1

scoreboard players set #100 const 100
scoreboard players set #25 const 25
scoreboard players set @p wisdomArmor 1

scoreboard players set @p aowMana 0

scoreboard players operation @p maxHealthMod /= #100 const
scoreboard players operation @p defenseMod /= #100 const

scoreboard players operation @p maxHealthMod *= #25 const
scoreboard players operation @p defenseMod *= #25 const

scoreboard players operation @p maxHealthMod += @p defenseMod

scoreboard players operation @p aowMana += @p maxHealthMod