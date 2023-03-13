scoreboard players set @p ascendCharge 1000
execute if score @p spookyMute matches 1 run scoreboard players set @p manaWarn 1
execute if score @p spookyMute matches 1 run schedule clear sbremake:manareset
execute if score @p spookyMute matches 1 run schedule function sbremake:manareset 1s append
execute if score @p spookyMute matches 1 run title @p actionbar [{"text":"Used","color":"aqua","bold":false},{"text":" To the MAX","color":"gold","bold":false},{"text":"! (+1000 Charges)","color":"aqua","bold":false}]
execute at @p run playsound minecraft:block.end_portal_frame.fill master @p ~ ~ ~