tag @s add tmp
setblock 0 2 0 oak_sign{Text2:'["",{"text":"[","color":"#555555"},{"text":"Lv10","color":"#AAAAAA"},{"text":"]","color":"#555555"},{"text":" Spirit Bat","color":"green"},{"text":" "},{"text":"1/1","color": "green"},{"text":"\\u2764","color":"#FF5555"}]'}
data modify entity @s CustomName set from block 0 2 0 Text2
data merge entity @s {CustomNameVisible:1b}
setblock 0 2 0 air
tag @s remove tmp