execute as @p store result score @s x run data get entity @s Pos[0] 1
execute as @p store result score @s y run data get entity @s Pos[1] 1
execute as @p store result score @s z run data get entity @s Pos[2] 1

execute as @e[name="sinmark",limit=1] store result score @s x run data get entity @s Pos[0] 1
execute as @e[name="sinmark",limit=1] store result score @s y run data get entity @s Pos[1] 1
execute as @e[name="sinmark",limit=1] store result score @s z run data get entity @s Pos[2] 1

execute store result score @p nx run scoreboard players operation @p x -= @e[name="sinmark",limit=1] x
execute store result score @p ny run scoreboard players operation @p y -= @e[name="sinmark",limit=1] y
execute store result score @p nz run scoreboard players operation @p z -= @e[name="sinmark",limit=1] z

execute if score @p x matches ..0 run function sbremake:items/sinseeker/xmath
execute if score @p y matches ..0 run function sbremake:items/sinseeker/ymath
execute if score @p z matches ..0 run function sbremake:items/sinseeker/zmath

function sbremake:items/sinseeker/final