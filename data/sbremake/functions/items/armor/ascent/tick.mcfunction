# Angel's Ascent
execute at @e[tag=ascentAS] align xz run particle minecraft:block minecraft:white_concrete ~0.5 ~-1 ~0.5 0 0 0 1 10 normal
execute as @e[tag=ascendAS] run scoreboard players add @s life 1
execute at @e[scores={life=20..},tag=ascendAS] if block ~ ~-1 ~ white_stained_glass run setblock ~ ~-1 ~ air
kill @e[scores={life=20..},tag=ascendAS]

execute as @a[limit=1] at @s unless block ~ ~-0.5 ~ air if score @s ascendCharge matches ..2 run scoreboard players add @s ascendRecharge 1
execute as @a[limit=1] at @s if block ~ ~-0.5 ~ air run scoreboard players reset @s ascendRecharge
execute if score @a[limit=1] ascendRecharge matches 20.. run function sbremake:items/armor/ascent/recharge

tellraw @a[predicate=sbremake:items/armor/ascent/no-charges] [{"text":"You don't have enough charges to spawn a floating block!","color":"red","bold":false}]

execute as @a[predicate=sbremake:items/armor/ascent/main] at @s run function sbremake:items/armor/ascent/main