tellraw @s [{"text": "You took damage while casting!","color": "red"}]
scoreboard players set @s dreamnailCharge 0
effect clear @s slowness
effect clear @s jump_boost
execute as @a run scoreboard players operation @s dreamnailHurt2 = @s dreamnailHurt 