execute as @e[tag=moltenGuide] at @s run function sbremake:items/mage/spoon/summon_wave
scoreboard players add #spoon count 1

execute if score #spoon count matches 4.. run kill @e[tag=moltenGuide]