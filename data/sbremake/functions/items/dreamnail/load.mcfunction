# Objectives
scoreboard objectives add dreamnailRC minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add dreamnailCharge dummy
scoreboard objectives add dreamnailHurt health
scoreboard objectives add dreamnailHurt2 dummy
execute as @a run scoreboard players operation @s dreamnailHurt2 = @s dreamnailHurt 