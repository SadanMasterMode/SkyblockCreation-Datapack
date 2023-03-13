setblock ~ ~ ~ anvil
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["reforge"]}
tellraw @a [{"text": "Placed new reforge anvil at current position!!","color": "green"}]