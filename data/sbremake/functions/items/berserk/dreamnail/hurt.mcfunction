advancement revoke @s only sbremake:items/melee/dreamnail/player_hurt
tellraw @s [{"text": "You took damage while casting!","color": "red"}]
scoreboard players set @s dreamnailCharge 0
effect clear @s slowness
effect clear @s jump_boost