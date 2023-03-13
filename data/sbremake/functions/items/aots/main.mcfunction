execute if score @p aotsStage matches 0 unless entity @p[scores={mana=..19}] run function sbremake:items/aots/stage1
execute if score @p aotsStage matches 1 unless entity @p[scores={mana=..39}] run function sbremake:items/aots/stage2
execute if score @p aotsStage matches 2 unless entity @p[scores={mana=..79}] run function sbremake:items/aots/stage3
execute if score @p aotsStage matches 3 unless entity @p[scores={mana=..159}] run function sbremake:items/aots/stage4
execute if score @p aotsStage matches 0 if entity @p[scores={mana=..19}] run function sbremake:items/aots/mana
execute if score @p aotsStage matches 1 if entity @p[scores={mana=..39}] run function sbremake:items/aots/mana
execute if score @p aotsStage matches 2 if entity @p[scores={mana=..79}] run function sbremake:items/aots/mana
execute if score @p aotsStage matches 3 if entity @p[scores={mana=..159}] run function sbremake:items/aots/mana

execute unless score @p aotsStage matches 3.. run scoreboard players add @p aotsStage 1
execute as @e[name="aots"] unless score @s aotsStage matches 3.. run scoreboard players add @s aotsStage 1
scoreboard players reset @a aotsCD
scoreboard players reset @a aotsRC

scoreboard players set @e[name="aots"] health 1

schedule function sbremake:items/aots/delay 30t append