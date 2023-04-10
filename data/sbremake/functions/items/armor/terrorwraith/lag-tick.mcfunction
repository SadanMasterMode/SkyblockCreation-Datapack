scoreboard players add @s[tag=inWraith] wraithTime 1

execute if entity @s[tag=inWraith] run schedule function sbremake:items/armor/terrorwraith/schedule-dmg 10t append

scoreboard players remove @s[scores={wraithCD=1..}] wraithCD 1

execute as @s[predicate=sbremake:items/armor/terrorwraith/main] at @s run function sbremake:items/armor/terrorwraith/main

execute as @s[scores={wraithTime=100..}] at @s run function sbremake:items/armor/terrorwraith/wraithout
execute as @s[scores={mana=..49},tag=inWraith] at @s run function sbremake:items/armor/terrorwraith/wraithout

execute if entity @s[tag=inWraith] as @e[type=!#sbremake:never-detect,tag=!spectator,tag=!wraithMarked] at @s on attacker if entity @s[type=player] as @e[distance=..0.00001] at @s run function sbremake:items/armor/terrorwraith/mark-mobs
