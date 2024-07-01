scoreboard players operation test cw_loops = iterr cw_loops
scoreboard players operation test cw_loops %= delay text_effects
execute if score test cw_loops matches 0 as @e[tag=cw_typewriter] at @s run function sbremake:utils/typewriter/type_write_loop1

scoreboard players remove iterr cw_loops 1
execute if score iterr cw_loops matches 1.. run schedule function sbremake:utils/typewriter/type_write_loop 1t