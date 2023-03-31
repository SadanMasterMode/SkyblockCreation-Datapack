tellraw @a [{"text": "Your Radiant Power Orb ran out!","color": "red"}]
scoreboard players reset #radiant-orb-bob fakePlayers
scoreboard players reset @s life
effect clear @a[predicate=sbremake:items/utility/deployables/manaflux/regen-2] regeneration

execute on vehicle run kill @s
kill @s