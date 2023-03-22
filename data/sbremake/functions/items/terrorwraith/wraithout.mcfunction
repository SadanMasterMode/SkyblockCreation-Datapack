tag @p remove inWraith
execute at @p run playsound minecraft:entity.wither.break_block master @p ~ ~ ~
kill @e[tag=wraithMarked,type=!wither,type=!ender_dragon]
execute if score @p wraithCount matches 1.. run tellraw @p [{"text":"TERRORWRAITH ","color":"red","bold":true},{"text":"You killed ","color":"red","bold":false},{"score":{"name":"@p","objective":"wraithCount"},"color":"red","bold":false},{"text":" marked mobs!","color":"red","bold":false}]
scoreboard players set @p wraithCount 0
scoreboard players set @p wraithTime 0
tellraw @p [{"text":"TERRORWRAITH ","color":"red","bold":true},{"text":"You exited Wraith form!","color":"red","bold":false}]
team leave @e[team=player,type=!player]
tag @p remove notified