kill @e[name="sinmark"]
execute as @r at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"sinmark"}',DisabledSlots:4144959,Tags:["spectator"]}
tellraw @a {"text":"Your old Marker was cleared and a new one was spawned!","color":"red"}
execute at @p run playsound minecraft:entity.ender_eye.launch ambient @p ~ ~ ~