trigger dhC1O1 set 0
scoreboard players set @a dhC1O1 0
trigger dhC1O2 set 0
scoreboard players set @a dhC1O2 0
trigger dhC2O1 set 0
scoreboard players set @a dhC2O1 0
trigger dhC2-1O1 set 0
scoreboard players set @a dhC2-1O1 0

scoreboard players set @a decayedHuskDigout 0
scoreboard players set @a dhDialogue_CH 0
scoreboard players set @a dhCH_Pause 0
scoreboard players set @e[tag=decayedHusk] dhDigAnim 0

tag @a remove mistyMines
tag @e[tag=objective] remove objective
tag @e[tag=decayedHusk] add objective