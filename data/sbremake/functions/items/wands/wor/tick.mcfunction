execute as @e[tag=lookingAtHit] run effect clear @s glowing
tag @e[tag=lookingAtHit] remove lookingAtHit
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'[{"text":"Wand of Reaping","italic":false,"color":"gold"}]'}}}}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function sbremake:utils/looking_at/start_ray
execute as @e[scores={worRC=1..},nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'[{"text":"Wand of Reaping","italic":false,"color":"gold"}]'}}}}] run function sbremake:items/wands/wor/main
team join red @e[tag=lookingAtHit]
scoreboard players reset @a worRC