schedule clear sbremake:world/dreamworld/mercurius/attacks/orbs/rotate_1
execute as @e[tag=borderOrb] run data merge entity @s {interpolation_duration:30,start_interpolation:0,transformation:[1f,0f,0f,0f,0f,1f,0f,-0.5f,0f,0f,1f,0f,0f,0f,0f,1f]}
execute if entity @e[tag=borderOrb] run schedule function sbremake:world/dreamworld/mercurius/attacks/orbs/rotate_2 1.5s append