scoreboard players add @s life 1

function sbremake:items/mage/fury/dance
schedule function sbremake:items/mage/fury/delay 8t append
schedule function sbremake:items/mage/fury/dmg 5t append

execute as @e[distance=..7,tag=!spectator,type=!#sbremake:never-detect] run tag @s add furyMarked
execute at @s[scores={life=200..}] as @e[tag=furyMarked] run data merge entity @s {HasVisualFire:0b}
execute at @s[scores={life=200..}] as @e[tag=furyMarked] run tag @s remove furyMarked
kill @s[scores={life=200..}]

tp @s ~ ~ ~ ~5 ~