advancement revoke @s only sbremake:items/sol/left_click_main

scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar [{"text":"Used","color":"aqua","bold":false},{"text":" Orb of Life","color":"gold","bold":false},{"text":"! (-"},{"score":{"name":"#40","objective":"percentageManaMod"},"color":"aqua","bold":false},{"text":" mana)","color":"aqua","bold":false}]

execute at @p run playsound minecraft:block.end_gateway.spawn master @p ~ ~ ~

kill 07c041fc-445a-41ed-ad7e-090b5219235d
execute at @s anchored eyes run summon marker ^ ^ ^0.1 {Tags:["lifeOrb","spectator","solOrb"],Invulnerable:1,NoGravity:1,data:{SBRemake:{UUID:"07c041fc-445a-41ed-ad7e-090b5219235d"}},UUID:[I;130040316,1146765805,-1384249077,1377379165]}
execute as 07c041fc-445a-41ed-ad7e-090b5219235d at @s run tp @s ~ ~ ~ facing entity @a[limit=1] eyes

scoreboard players operation @s mana -= #40 percentageManaMod
scoreboard players set @s lifeCD 0