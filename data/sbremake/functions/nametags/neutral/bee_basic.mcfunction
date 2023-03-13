tag @s add tmp
setblock 0 2 0 oak_sign{Text2:'["",{"text":"[","color":"#555555"},{"text":"Lv1","color":"#AAAAAA"},{"text":"]","color":"#555555"},{"text":" Bee","color":"#FFFF55"},{"text":" "},{"score":{"name":"@e[tag=tmp,limit=1]","objective":"health"},"color":"#55FF55"},{"text":"/","color":"#55FF55"},{"score":{"name":"@e[tag=tmp,limit=1]","objective":"maxHealth"},"color":"#55FF55"},{"text":"\\u2764","color":"#FF5555"}]'}
data modify entity @s CustomName set from block 0 2 0 Text2
data merge entity @s {CustomNameVisible:1b}
setblock 0 2 0 air
tag @s remove tmp