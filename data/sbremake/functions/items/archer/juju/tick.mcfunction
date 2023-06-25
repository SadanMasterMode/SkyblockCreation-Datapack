execute at @a run tp d25888b5-9055-47a5-92a8-bd8d2b6b2a00 ~ ~ ~
execute store result entity d25888b5-9055-47a5-92a8-bd8d2b6b2a00 Air short 1 run time query gametime

execute as @a[predicate=sbremake:items/archer/juju/holding] at @s unless entity d25888b5-9055-47a5-92a8-bd8d2b6b2a00 run function sbremake:items/archer/juju/summon
execute as @a[predicate=!sbremake:items/archer/juju/holding] run kill @e[tag=juju,type=!arrow]

execute unless score #juju-cd fakePlayers >= #juju-max-cd fakePlayers run scoreboard players add #juju-cd fakePlayers 1

execute at @e[tag=juju,type=arrow] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#sbremake:never-detect,tag=!spectator,dx=1.5,dz=1.5] at @s run function sbremake:items/archer/juju/dmg
kill @e[type=arrow,tag=kill-me]