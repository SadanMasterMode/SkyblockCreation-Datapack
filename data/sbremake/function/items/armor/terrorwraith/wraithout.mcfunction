tag @s remove inWraith
playsound minecraft:entity.wither.break_block master @s ~ ~ ~

scoreboard players set @s wraithTime 0
tellraw @s [{"text":"You exited Wraith form!","color":"dark_gray"}]
title @s times 0 1 0
title @s subtitle " "
title @s title " "

effect clear @s speed
effect clear @s resistance
effect clear @s invisibility

team leave @e[tag=wraithMarked,team=player]
execute as @e[tag=wraithMarked] run data merge entity @s {NoAI:0b}
execute as @e[tag=wraithMarked] run effect clear @s glowing
tag @e[tag=wraithMarked] remove wraithMarked

tag @s remove notified