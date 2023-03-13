# Pre
advancement revoke @s only sbremake:mercurius/hurt
execute at @e[tag=mercurius] run particle cloud ~ ~1 ~ 0 0 0 0.3 500 normal
execute at @e[tag=mercurius] run summon marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["mercuriusTP","spectator","mercuriusSummon"]}

# Generate Random Number
function sbremake:utils/random_number
scoreboard players operation @a rand %= #8 const

execute if score @s rand matches 0 run tp @e[tag=mercurius] 92 42 93
execute if score @s rand matches 1 run tp @e[tag=mercurius] 100 42 88
execute if score @s rand matches 2 run tp @e[tag=mercurius] 108 42 91
execute if score @s rand matches 3 run tp @e[tag=mercurius] 111 42 99
execute if score @s rand matches 4 run tp @e[tag=mercurius] 107 42 108
execute if score @s rand matches 5 run tp @e[tag=mercurius] 100 42 111
execute if score @s rand matches 6 run tp @e[tag=mercurius] 91 42 108
execute if score @s rand matches 7 run tp @e[tag=mercurius] 88 42 99

# Make a fake-out
function sbremake:utils/random_number
scoreboard players operation @a rand %= #10 const
schedule function sbremake:world/dreamworld/mercurius/attacks/fakeout 1t append

# Post
tellraw @s [{"text": "The Emperor teleported away!","color": "red"}]