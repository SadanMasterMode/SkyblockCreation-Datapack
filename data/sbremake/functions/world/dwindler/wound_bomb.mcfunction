effect give @s minecraft:instant_damage 1 0 true
tellraw @s [{"text": "You've been hit by a Wound Bomb!","color": "red"}]
execute at @e[tag=wound_bomb,limit=1,sort=nearest] run particle block lava ~ ~1 ~ 0 0 0 0 1000 normal
kill @e[tag=wound_bomb,limit=1,sort=nearest]