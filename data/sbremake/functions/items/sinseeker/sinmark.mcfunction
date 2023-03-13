execute as @r at @s unless entity @e[name="sinmark",limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"sinmark"}',DisabledSlots:4144959,Tags:["spectator"]}
tellraw @a {"text":"Placed a new marker!","color":"green"}
execute at @p run playsound minecraft:entity.ender_eye.launch ambient @p ~ ~ ~