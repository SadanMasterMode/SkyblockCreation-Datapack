kill 487bdc79-7a38-4017-869d-f3f0f61a6adc
summon marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"sinmark"}',Tags:["spectator","sinmark"],data:{SBRemake:{UUID:"487bdc79-7a38-4017-869d-f3f0f61a6adc"}},UUID:[I;1216076921,2050506775,-2036468752,-166040868]}
tellraw @a {"text":"Your old Marker was cleared and a new one was spawned!","color":"red"}
execute at @p run playsound minecraft:entity.ender_eye.launch ambient @p ~ ~ ~