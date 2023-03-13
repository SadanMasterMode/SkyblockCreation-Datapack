tellraw @s [{"text": "You may have died, but the fight isn't over yet. Fight The Dwindler again in the Misty Mines!","color": "dark_gray","italic": true}]
execute as @e[tag=dwindler] run scoreboard players set @s health 500
execute as @e[tag=dwindler] run tag @s remove 400
execute as @e[tag=dwindler] run tag @s remove 300
execute as @e[tag=dwindler] run tag @s remove 200
execute as @e[tag=dwindler] run tag @s remove 100
execute as @e[tag=dwindler] run tp @s 62 44 -57

fill 57 46 -45 49 43 -45 air replace barrier
kill @e[type=vex]
kill @e[type=pillager]
kill @e[type=vindicator]
kill @e[type=illusioner]
kill @e[type=experience_orb]
kill @e[tag=snow_bomb]
kill @e[tag=wound_bomb]
kill @e[tag=ender_bomb]
schedule function sbremake:world/dwindler/delay 3s append
kill @e[tag=item,nbt={Item:{id:"minecraft:totem_of_undying"}}]
kill @e[tag=item,nbt={Item:{id:"minecraft:emerald"}}]
clear @p totem_of_undying
clear @p emerald

scoreboard players reset @p dwindlerDeaths