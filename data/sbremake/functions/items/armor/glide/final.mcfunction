tag @s remove inGlide

gamerule sendCommandFeedback false
execute if score @s gamemode matches 0 run gamemode survival @s
execute if score @s gamemode matches 1 run gamemode creative @s
execute if score @s gamemode matches 2 run gamemode adventure @s
tp @s 9e2555c3-0221-4982-937c-ecca667a6007
kill 9e2555c3-0221-4982-937c-ecca667a6007
tellraw @s [{"text":"SPIRIT GLIDE","color":"red","bold":true},{"text":" You teleported back to your original position!","color":"red","bold":false}]
gamerule sendCommandFeedback true