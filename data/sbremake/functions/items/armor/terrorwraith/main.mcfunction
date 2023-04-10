tag @s add inWraith
title @s times 0 100 0
title @s subtitle {"text":"In Wraith Form","color":"dark_gray"}
title @s title " "

execute as @e[type=!#sbremake:never-detect,tag=!spectator] at @s on attacker if entity @s[type=player] as @e[distance=..0.00001] run function sbremake:items/armor/terrorwraith/main-dmg

tellraw @s [{"text":"You became a Wraith!","color":"dark_gray"}]
team join player @e[type=!minecraft:armor_stand]
effect give @s minecraft:resistance 5 100 true
effect give @s speed 5 1 true
effect give @s minecraft:invisibility 5 0 true
playsound minecraft:entity.wither.spawn master @s
scoreboard players set @s wraithCD 300