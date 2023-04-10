advancement revoke @s only sbremake:items/melee/dreamnail/player_hurt
tellraw @s[scores={dreamnailCharge=1..}] [{"text": "You took damage while casting!","color": "red"}]
scoreboard players set @s dreamnailCharge 0
effect clear @s[scores={dreamnailCharge=1..}] slowness
effect clear @s[scores={dreamnailCharge=1..}] jump_boost