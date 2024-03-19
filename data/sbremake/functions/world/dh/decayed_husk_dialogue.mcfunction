# Misc Stuff
scoreboard players add @a dhDialogueProcess 1

# Intro
execute unless score @s dhPause matches 1.. run scoreboard players add @s dhDialogueProgress 1
execute if score @s dhDialogueProgress matches 1 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": Hey!","color": "white"}]
execute if score @s dhDialogueProgress matches 1 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhDialogueProgress matches 60 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": Sorry if I scared you... I could barely contain my excitement when I saw another entity in this world.","color": "white"}]
execute if score @s dhDialogueProgress matches 60 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhDialogueProgress matches 120 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": Tell me Adventurer... what is your name?","color": "white"}]
execute if score @s dhDialogueProgress matches 120 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhDialogueProgress matches 180 run scoreboard players enable @s dhC1O1
execute if score @s dhDialogueProgress matches 180 run scoreboard players enable @s dhC1O2
execute if score @s dhDialogueProgress matches 180 run tellraw @a [{"text": "Select an option: ","color": "white"},{"text": "[ ","color": "yellow"},{"selector": "@s","color": "green","clickEvent": {"action": "run_command","value": "/trigger dhC1O1 set 1"}},{"text": " ] ","color": "yellow"},{"text": " ","color": "white"},{"text": "[ ","color": "yellow"},{"text": "Stranger danger! ","color": "red","clickEvent": {"action": "run_command","value": "/trigger dhC1O2 set 1"}},{"text": "]","color": "yellow"}]
execute if score @s dhDialogueProgress matches 181 run scoreboard players set @s dhPause 1

# Choice 1 Option 1
execute if score @s dhC1O1 matches 1 if score @s dhDialogueProgress matches 181 run scoreboard players set @s dhPause 0
execute if score @s dhC1O1 matches 1 if score @s dhDialogueProgress matches 181 as @s run trigger dhC1O2 add 0
execute if score @s dhC1O1 matches 1 if score @s dhDialogueProgress matches 181 run tellraw @a [{"text": "\nThey will remember that.\n","italic": true,"color": "dark_gray"}]
execute if score @s dhC1O1 matches 1 if score @s dhDialogueProgress matches 181 run scoreboard players add @s dhRep 1
execute if score @s dhC1O1 matches 1 if score @s dhDialogueProgress matches 240 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": ","color": "white"},{"selector":"@s","color": "gold"},{"text": ", is that what they call you?","color": "white"}]
execute if score @s dhC1O1 matches 1 if score @s dhDialogueProgress matches 240 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhC1O1 matches 1 if score @s dhDialogueProgress matches 300 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": Nice to meet you then, I can feel as we will be great friends.","color": "white"}]
execute if score @s dhC1O1 matches 1 if score @s dhDialogueProgress matches 300 at @e[tag=decayedHusk] run playsound entity.villager.no master @s

# Choice 1 Option 2
execute if score @s dhC1O2 matches 1 if score @s dhDialogueProgress matches 181 run scoreboard players set @s dhPause 0
execute if score @s dhC1O2 matches 1 if score @s dhDialogueProgress matches 181 as @s run trigger dhC1O1 add 0
execute if score @s dhC1O2 matches 1 if score @s dhDialogueProgress matches 181 run tellraw @a [{"text": "\nThey will remember that.\n","italic": true,"color": "dark_gray"}]
execute if score @s dhC1O2 matches 1 if score @s dhDialogueProgress matches 181 run scoreboard players remove @s dhRep 1
execute if score @s dhC1O2 matches 1 if score @s dhDialogueProgress matches 240 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": Woah, no need to jump to conclusions!","color": "white"}]
execute if score @s dhC1O2 matches 1 if score @s dhDialogueProgress matches 240 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhC1O2 matches 1 if score @s dhDialogueProgress matches 300 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": You can trust me... I have nothing to gain by harming you.","color": "white"}]
execute if score @s dhC1O2 matches 1 if score @s dhDialogueProgress matches 300 at @e[tag=decayedHusk] run playsound entity.villager.no master @s

# Choice 2
execute if score @s dhDialogueProgress matches 360 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": My name is ","color": "white"},{"text": "Decayed Husk","color": "gold"},{"text": ", I've been alone here for decades!","color": "white"}]
execute if score @s dhDialogueProgress matches 360 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhDialogueProgress matches 420 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": Say, could you help me with a favor? It will be a tremendous help to me!","color": "white"}]
execute if score @s dhDialogueProgress matches 420 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhDialogueProgress matches 420 run scoreboard players enable @s dhC2O1
execute if score @s dhDialogueProgress matches 480 run tellraw @a [{"text": "Select an option: ","color": "white"},{"text": "[ ","color": "yellow"},{"text": "Sure!","color": "gold","clickEvent": {"action": "run_command","value": "/trigger dhC2O1 set 1"}},{"text": " ] ","color": "yellow"}]
execute if score @s dhDialogueProgress matches 481 run scoreboard players set @s dhPause 1

# Choice 2 Option 1
execute if score @s dhC2O1 matches 1.. if score @s dhDialogueProgress matches 481 run scoreboard players set @s dhPause 0
execute if score @s dhDialogueProgress matches 482 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhDialogueProgress matches 540 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": There is a certain cave system nearby called the ","color": "white"},{"text": "Misty Mines","color": "gray"},{"text": ".","color": "white"}]
execute if score @s dhDialogueProgress matches 540 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhDialogueProgress matches 600 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": The Misty Mines house a certain creature called ","color": "white"},{"text": "The Dwindler","color": "red"},{"text": ". It's a powerful beast constructed from pure ","color": "white"},{"text": "dark energy","color": "dark_purple"}]
execute if score @s dhDialogueProgress matches 600 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhDialogueProgress matches 660 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": My strength is much too weak for this job... Slay the beast, and you will obtain a ","color": "white"},{"text": "powerful weapon","color": "gold"},{"text": " from me.","color": "white"}]
execute if score @s dhDialogueProgress matches 660 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhDialogueProgress matches 660 run tag @s add mistyMines
execute if score @s dhDialogueProgress matches 720 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": Make haste, Adventurer! I will stay here, in case you need me.","color": "white"}]
execute if score @s dhDialogueProgress matches 720 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhDialogueProgress matches 720 as @e[tag=objective,tag=decayedHusk] run tag @s remove objective
execute if score @s dhDialogueProgress matches 720 as @e[tag=mistyMineMarker] run tag @s add objective
execute if score @s dhDialogueProgress matches 720 unless score #killedDwindler fakePlayers matches 1 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": Follow the Marker which is orbiting you to find your next objective."}]
execute if score @s dhDialogueProgress matches 720 unless score #killedDwindler fakePlayers matches 1 at @e[tag=decayedHusk] run playsound entity.villager.no master @a
execute if score @s dhDialogueProgress matches 720 run tellraw @a ["",{"text":"\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac","color":"dark_aqua"},{"text":"\n"},{"text":"   QUEST STARTED","bold":true,"color":"aqua"},{"text":" A Dark Presence","italic":true,"color":"dark_aqua"},{"text":" \u2716","color":"red"},{"text":"\n\n"},{"text":"   OBJECTIVES\n    ","bold":true,"color":"green"},{"text":"\u2716","color":"red"},{"text":" Travel to the Misty Mines\n     ","color":"white"},{"text":"\u2716","color":"red"},{"text":" Slay the Dwindler\n     ","color":"white"},{"text":"\u2716","color":"red"},{"text":" Return to the Decayed Husk","color":"white"},{"text":"\n"},{"text":"\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac","color":"dark_aqua"}]
execute if score @s dhDialogueProgress matches 721 run scoreboard players set @s dhPause 1

# Killed Dwindler
execute if score @s dhDialogueProgress matches 721 if score #killedDwindler fakePlayers matches 1 run scoreboard players set @s dhPause 0
execute if score @s dhDialogueProgress matches 725 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": You're back already?","color": "white"}]
execute if score @s dhDialogueProgress matches 725 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhDialogueProgress matches 780 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": That was pretty quick. You expect your reward now, eh?","color": "white"}]
execute if score @s dhDialogueProgress matches 780 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhDialogueProgress matches 840 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": I've had this for quite a long while, I think you deserve it.","color": "white"}]
execute if score @s dhDialogueProgress matches 840 at @e[tag=decayedHusk] run playsound entity.villager.no master @s
execute if score @s dhDialogueProgress matches 900 as @s run scoreboard players set @s decayedHuskDigout -120
execute if score @s dhDialogueProgress matches 900 run data modify block 24 53 22 front_text.messages[1] set value ''
execute if score @s dhDialogueProgress matches 900 run data merge entity @e[tag=decayedHusk,limit=1] {CustomNameVisible:0b}
execute if score @s dhDialogueProgress matches 900 run function sbremake:world/dh/item_give

# Afterchat
execute if score @s dhDialogueProgress matches 901 unless score @s dhCH_Pause matches 1 run scoreboard players add @s dhDialogue_CH 1
execute if score @s dhDialogue_CH matches 30 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": Hey, is it there anything you still need?","color": "white"}]
execute if score @s dhDialogue_CH matches 30 at @s run playsound entity.villager.no master @s

execute if score @s dhDialogue_CH matches 90 if score @s dhRep matches 2.. run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": I'm okay with just chatting, if thats what you need.","color": "white"}]
execute if score @s dhDialogue_CH matches 90 if score @s dhRep matches 2.. at @s run playsound entity.villager.no master @s
execute if score @s dhDialogue_CH matches 150 if score @s dhRep matches 2.. run tellraw @a [{"text": "Select an option: ","color": "white"},{"text": "[ ","color": "yellow"},{"text": "What is the Crystal Heart?","color": "gold","clickEvent": {"action": "run_command","value": "/trigger dhC2-1O1 set 1"}},{"text": " ] ","color": "yellow"}]
execute if score @s dhDialogue_CH matches 150 if score @s dhRep matches 2.. at @s run playsound entity.villager.no master @s
execute if score @s dhDialogue_CH matches 150 if score @s dhRep matches 2.. run scoreboard players enable @s dhC2-1O1
execute if score @s dhDialogue_CH matches 151 if score @s dhRep matches 2.. run scoreboard players set @s dhCH_Pause 1

execute if score @s dhDialogue_CH matches 90 unless score @s dhRep matches 2.. run tellraw @a [{"text": "Select an option: ","color": "white"},{"text": "[ ","color": "yellow"},{"text": "What is the Crystal Heart?","color": "gold","clickEvent": {"action": "run_command","value": "/trigger dhC2-1O1 set 1"}},{"text": " ] ","color": "yellow"}]
execute if score @s dhDialogue_CH matches 90 unless score @s dhRep matches 2.. at @s run playsound entity.villager.no master @s
execute if score @s dhDialogue_CH matches 90 unless score @s dhRep matches 2.. run scoreboard players enable @s dhC2-1O1
execute if score @s dhDialogue_CH matches 91 unless score @s dhRep matches 2.. run scoreboard players set @s dhCH_Pause 1

# Choice 2-1 Option 1
execute if score @s dhC2-1O1 matches 1 run scoreboard players set @s dhDialogue_CH 152
execute if score @s dhDialogue_CH matches 152 if score @s dhC2-1O1 matches 1 run scoreboard players set @s dhCH_Pause 0
execute if score @s dhC2-1O1 matches 1 run scoreboard players set @s dhC2-1O1 0
execute if score @s dhDialogue_CH matches 182 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": The ","color": "white"},{"text": "Crystal Heart","color": "dark_purple"},{"text": "?","color": "white"}]
execute if score @s dhDialogue_CH matches 182 at @s run playsound entity.villager.no master @s

execute if score @s dhDialogue_CH matches 210 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": Well, its a powerful relic that eats away at all surrounding life force.","color": "white"}]
execute if score @s dhDialogue_CH matches 210 at @s run playsound entity.villager.no master @s

execute if score @s dhDialogue_CH matches 270 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": I asked you to destroy it as it was slowly killing me.","color": "white"}]
execute if score @s dhDialogue_CH matches 270 at @s run playsound entity.villager.no master @s

execute if score @s dhDialogue_CH matches 330 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": I still thank you for that as well, Adventurer.","color": "white"}]
execute if score @s dhDialogue_CH matches 330 at @s run playsound entity.villager.no master @s

execute if score @s dhDialogue_CH matches 390 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": But that's all that you need to know about it right now.","color": "white"}]
execute if score @s dhDialogue_CH matches 390 at @s run playsound entity.villager.no master @s

execute if score @s dhDialogue_CH matches 470 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": I'm sure I can tell you some more about it another time.","color": "white"}]
execute if score @s dhDialogue_CH matches 470 at @s run playsound entity.villager.no master @s

execute if score @s dhDialogue_CH matches 560 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text": ": If you're lost, explore the area a bit.","color": "white"}]
execute if score @s dhDialogue_CH matches 560 at @s run playsound entity.villager.no master @s

execute if score @s dhDialogue_CH matches 620 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text":": I'm sure there's ","color": "white"},{"text": "something ","italic": true,"color": "white"},{"text": "still alive here.","italic": false,"color": "white"}]
execute if score @s dhDialogue_CH matches 620 at @s run playsound entity.villager.no master @s

execute if score @s dhDialogue_CH matches 3000 run tellraw @a [{"text": "[NPC] ","color": "yellow"},{"text": "Decayed Husk","color": "gold"},{"text":": ","italic": false,"color": "white"},{"text":"Pssssst... ","italic": true,"color": "white"},{"text":"I don't have any other dialogue!","italic": false,"color": "white"}]
execute if score @s dhDialogue_CH matches 3000 unless score @s dhDetermination matches 1 run function sbremake:achievements/determination
execute if score @s dhDialogue_CH matches 3000 at @s run playsound entity.villager.no master @s