effect give @s minecraft:slowness 3 100 true
effect give @s minecraft:jump_boost 3 128 true
tellraw @s [{"text": "You've been hit by a Snow Bomb!","color": "red"}]
execute at @e[tag=snow_bomb,limit=1,sort=nearest] run particle block{block_state:"snow"} ~ ~1 ~ 0 0 0 0 1000 normal
kill @e[tag=snow_bomb,limit=1,sort=nearest]