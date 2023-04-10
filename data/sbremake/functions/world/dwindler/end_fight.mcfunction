tag @s remove dwindlerFight
tag @s remove inDwindlerBoss
tag @s remove mistyMines
tag @s[tag=!crystalDeath] add crystalDeath
scoreboard players set #killedDwindler fakePlayers 1
execute as @e[tag=mistyMineMarker] run tag @s remove objective
execute as @e[tag=!objective,tag=decayedHusk] run tag @s add objective
tellraw @a {"text": "You feel safe at last as the dark presence leaves","italic": true,"color": "dark_gray"}
fill 57 46 -45 49 43 -45 air replace barrier
scoreboard players set @s dwindlerSpawn 0
scoreboard players set @s dwindlerMana 0
kill @e[type=vex]
kill @e[type=pillager]
kill @e[type=vindicator]
kill @e[type=illusioner]
kill @e[tag=snow_bomb]
kill @e[tag=wound_bomb]
kill @e[tag=ender_bomb]
kill 7767141e-9475-49e9-bc12-971010d9f0ad
kill @e[tag=item,nbt={Item:{id:"minecraft:totem_of_undying"}}]
kill @e[tag=item,nbt={Item:{id:"minecraft:emerald"}}]
clear @p totem_of_undying
clear @p emerald
playsound entity.wither.death master @p ~ ~ ~
tellraw @a ["",{"text":"\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac","color":"dark_aqua"},{"text":"\n"},{"text":"   QUEST UPDATED","bold":true,"color":"aqua"},{"text":" A Dark Presence","italic":true,"color":"dark_aqua"},{"text":" \u2716","color":"red"},{"text":"\n\n"},{"text":"   OBJECTIVES\n    ","bold":true,"color":"green"},{"text":"\u2714","color":"green"},{"text":" Travel to the Misty Mines\n     ","color":"white"},{"text":"\u2714","color":"green"},{"text":" Slay the Dwindler\n     ","color":"white"},{"text":"\u2716","color":"red"},{"text":" Return to the Decayed Husk","color":"white"},{"text":"\n"},{"text":"\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac","color":"dark_aqua"}]
execute if score @p dhDialogueProgress matches 482 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": Perfect! Do not worry, this will not take too much of your time, fearless Adventurer.","color": "white"}]