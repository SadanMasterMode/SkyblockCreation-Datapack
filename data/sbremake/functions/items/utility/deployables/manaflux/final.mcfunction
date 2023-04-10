tellraw @a [{"text": "Your Mana Flux Power Orb ran out!","color": "red"}]
scoreboard players reset #manaflux-orb-bob fakePlayers
scoreboard players reset @s life
tag @a[tag=near-manaflux] remove near-manaflux
effect clear @a[predicate=sbremake:items/utility/deployables/manaflux/regen-2] regeneration

execute on vehicle run kill @s
kill @s