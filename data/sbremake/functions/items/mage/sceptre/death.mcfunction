particle explosion ~ ~ ~ 0.5 0.5 0.5 1 10 normal
playsound entity.generic.explode master @a[distance=..10] ~ ~ ~ 0.3 1.5 1

execute as @e[distance=..3,tag=!spectator,type=!#sbremake:never-detect] run function sbremake:items/mage/sceptre/dmg

tp @s ~ ~-100 ~
kill @s