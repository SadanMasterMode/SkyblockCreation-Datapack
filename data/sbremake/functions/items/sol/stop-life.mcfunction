advancement revoke @s only sbremake:items/sol/left_click_stop

# No orb
execute unless entity 07c041fc-445a-41ed-ad7e-090b5219235d run tellraw @a [{"text": "You don't have an active Life Orb!","color": "red"}]

# Orb but movement
execute as 07c041fc-445a-41ed-ad7e-090b5219235d if entity @s[tag=noMovement] run tellraw @a [{"text": "You don't have an active Life Orb which has not been stopped!","color": "red"}]

# Success
execute as 07c041fc-445a-41ed-ad7e-090b5219235d if entity @s[tag=!noMovement] run tellraw @a [{"text": "Stopped the motion of your Life Orb!","color": "green"}]
execute as 07c041fc-445a-41ed-ad7e-090b5219235d if entity @s[tag=!noMovement] run tag @s add noMovement