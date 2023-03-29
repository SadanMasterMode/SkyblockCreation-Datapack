tellraw @a [{"text": "Your Radiant Power Orb ran out!","color": "red"}]
scoreboard players reset #radiant-orb-bob fakePlayers
scoreboard players reset @s life

execute on vehicle run kill @s
kill @s