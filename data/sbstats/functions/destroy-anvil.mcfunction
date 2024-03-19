advancement revoke @s only sbstats:interaction
tellraw @a {"text":"Destroyed a reforge anvil!","color":"red"}
execute at @s run playsound minecraft:block.anvil.destroy master @s
execute at @e[type=interaction,distance=..7,sort=nearest,tag=reforge,limit=1] run setblock ~ ~ ~ air
execute as @e[type=interaction,distance=..7,sort=nearest,tag=reforge,limit=1] run kill @s