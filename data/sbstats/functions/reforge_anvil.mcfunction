summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["reforge"]}
particle smoke ~ ~0.5 ~ 0 0 0 0.1 100 normal
playsound block.anvil.place master @a ~ ~ ~
tellraw @a [{"text": "Placed new reforge anvil!","color": "green"}]
kill @s