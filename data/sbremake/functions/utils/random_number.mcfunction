summon marker ~ ~ ~ {Tags:["rndNum","spectator"],NoGravity:1b,Invulnerable:1b}
execute store result score @a rand run data get entity @e[tag=rndNum,limit=1] UUID[0]
kill @e[tag=rndNum]