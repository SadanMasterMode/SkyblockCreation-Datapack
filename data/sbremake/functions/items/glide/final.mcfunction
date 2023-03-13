tag @p remove inGlide
gamerule sendCommandFeedback false
execute if score @p gamemode matches 0 run gamemode survival @p
execute if score @p gamemode matches 1 run gamemode creative @p
execute if score @p gamemode matches 2 run gamemode adventure @p
tp @p @e[tag=glide,limit=1]
execute at @p run kill @e[tag=glide,sort=nearest,limit=1]
execute if score @p spookyMute matches 1 run tellraw @p [{"text":"SPIRIT GLIDE","color":"red","bold":true},{"text":" You teleported back to your original position!","color":"red","bold":false}]
scoreboard players set @p glideTime 0
gamerule sendCommandFeedback true