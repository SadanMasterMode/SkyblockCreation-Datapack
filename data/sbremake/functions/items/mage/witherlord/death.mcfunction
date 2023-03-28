execute as @e[distance=..2,type=!#sbremake:never-detect,tag=!spectator] at @s run function sbremake:items/mage/witherlord/dmg
particle explosion ~ ~ ~ 0 0 0 0 1 normal @a[limit=1]
execute on passengers run kill @s
kill @s