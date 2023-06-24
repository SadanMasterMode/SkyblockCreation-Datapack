execute if score @s[scores={mana=20..}] aotsStage matches 0 run function sbremake:items/berserk/aots/stage1
execute if score @s[scores={mana=40..}] aotsStage matches 1 run function sbremake:items/berserk/aots/stage2
execute if score @s[scores={mana=80..}] aotsStage matches 2 run function sbremake:items/berserk/aots/stage3
execute if score @s[scores={mana=160..}] aotsStage matches 3 run function sbremake:items/berserk/aots/stage4

execute if score @s[scores={mana=..19}] aotsStage matches 0 run tellraw @a {"text":"You don't have enough mana to use this ability!","color":"red"}
execute if score @s[scores={mana=..39}] aotsStage matches 1 run tellraw @a {"text":"You don't have enough mana to use this ability!","color":"red"}
execute if score @s[scores={mana=..79}] aotsStage matches 2 run tellraw @a {"text":"You don't have enough mana to use this ability!","color":"red"}
execute if score @s[scores={mana=..159}] aotsStage matches 3 run tellraw @a {"text":"You don't have enough mana to use this ability!","color":"red"}

execute unless score @s aotsStage matches 3.. run scoreboard players add @s aotsStage 1
scoreboard players set @a aotsCD 0

schedule function sbremake:items/berserk/aots/delay 30t append