# Pre
advancement revoke @s only sbremake:mercurius/hurt
execute at e39dc353-0355-4517-b803-00dee36ca116 run particle cloud ~ ~1 ~ 0 0 0 0.3 500 normal
execute at e39dc353-0355-4517-b803-00dee36ca116 run summon marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["mercuriusTP","spectator","mercuriusSummon"]}
execute at e39dc353-0355-4517-b803-00dee36ca116 run particle dust{color:[0.784,0.0,1.0],scale:1} ~ ~0.5 ~ 0.5 0.5 0.5 1 10 normal

# Generate Random Number
function sbremake:utils/random_number
scoreboard players operation @a rand %= #8 const

## Summon air toggle entity
execute at e39dc353-0355-4517-b803-00dee36ca116 run summon area_effect_cloud ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["mercuriusTP-1","spectator"],UUID:[I;-1377140412,1957973240,-2090846929,1967741771],Radius:0,Duration:2147483647}
### adea8144-74b4-4cf8-8360-352f75495b4b

ride e39dc353-0355-4517-b803-00dee36ca116 mount adea8144-74b4-4cf8-8360-352f75495b4b

execute if score @s rand matches 0 run tp adea8144-74b4-4cf8-8360-352f75495b4b 92 42 93
execute if score @s rand matches 1 run tp adea8144-74b4-4cf8-8360-352f75495b4b 100 42 88
execute if score @s rand matches 2 run tp adea8144-74b4-4cf8-8360-352f75495b4b 108 42 91
execute if score @s rand matches 3 run tp adea8144-74b4-4cf8-8360-352f75495b4b 111 42 99
execute if score @s rand matches 4 run tp adea8144-74b4-4cf8-8360-352f75495b4b 107 42 108
execute if score @s rand matches 5 run tp adea8144-74b4-4cf8-8360-352f75495b4b 100 42 111
execute if score @s rand matches 6 run tp adea8144-74b4-4cf8-8360-352f75495b4b 91 42 108
execute if score @s rand matches 7 run tp adea8144-74b4-4cf8-8360-352f75495b4b 88 42 99

execute store result entity adea8144-74b4-4cf8-8360-352f75495b4b Air short 1 run time query gametime

schedule function sbremake:world/dreamworld/mercurius/attacks/teleport-dismount 1t append

# Make a fake-out
function sbremake:utils/random_number
scoreboard players operation @a rand %= #10 const
schedule function sbremake:world/dreamworld/mercurius/attacks/fakeout 0.5s append