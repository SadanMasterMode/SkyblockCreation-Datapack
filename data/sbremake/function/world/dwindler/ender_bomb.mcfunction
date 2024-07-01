execute as @s at @s run tp @s ~ ~ ~ ~180 ~
tellraw @s [{"text": "You've been hit by an Ender Bomb!","color": "red"}]
execute at @e[tag=ender_bomb,limit=1,sort=nearest] run particle block{block_state:"chorus_flower"} ~ ~1 ~ 0 0 0 0 1000 normal
kill @e[tag=ender_bomb,limit=1,sort=nearest]