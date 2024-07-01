tellraw @a [{"text": "Your Radiant Power Orb ran out!","color": "red"}]
scoreboard players reset #radiant-orb-bob fakePlayers
scoreboard players reset @s life
tag @a[tag=near-radiant] remove near-radiant
effect clear @a[predicate=sbremake:items/utility/deployables/radiant/regen-1] regeneration

execute on vehicle run kill @s
kill @s