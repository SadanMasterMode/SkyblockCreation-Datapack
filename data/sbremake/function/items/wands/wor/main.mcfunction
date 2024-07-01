tellraw @s [{"text": "Your strength flows into the Wand, killing the entity.","color": "dark_gray"}]

playsound entity.wither_skeleton.death master @s ~ ~ ~
kill @e[tag=!newDmg,tag=wor-hit]
scoreboard players set @e[tag=newDmg,tag=wor-hit] health 0