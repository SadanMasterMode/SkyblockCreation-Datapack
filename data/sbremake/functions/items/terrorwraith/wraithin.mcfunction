execute if score @p spookyMute matches 1 run tellraw @p [{"text":"TERRORWRAITH ","color":"green","bold":true},{"text":"You entered Wraith form!","color":"green","bold":false}]
team join player @e[type=!minecraft:armor_stand]
effect give @p minecraft:resistance 5 100 true
effect give @p speed 5 1 true
effect give @p minecraft:invisibility 5 0 true
execute at @p run playsound minecraft:entity.wither.spawn master @p ~ ~ ~
scoreboard players set @p wraithCD 300
tag @p add notified