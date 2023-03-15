advancement revoke @s only sbremake:items/sol/right_click_stop

# No orb
execute unless entity 48782dea-21f1-43a5-b4cb-23fa86396cec run tellraw @a [{"text": "You don't have an active Shadow Orb!","color": "red"}]

# Orb but movement
execute as 48782dea-21f1-43a5-b4cb-23fa86396cec if entity @s[tag=noMovement] run tellraw @a [{"text": "You don't have an active Shadow Orb which has not been stopped!","color": "red"}]

# Success
execute as 48782dea-21f1-43a5-b4cb-23fa86396cec if entity @s[tag=!noMovement] run tellraw @a [{"text": "Stopped the motion of your Shadow Orb!","color": "green"}]
execute as 48782dea-21f1-43a5-b4cb-23fa86396cec if entity @s[tag=!noMovement] run tag @s add noMovement