scoreboard players add @s life 1

execute if entity @e[tag=ffsHeads,distance=..0.1,limit=1] run function sbremake:items/mage/ffs/final
execute at @s run function sbremake:items/mage/ffs/dance
execute at @s run function sbremake:items/mage/ffs/dance-2