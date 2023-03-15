summon marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["kill","spectator"]}
execute at @s run particle explosion ~ ~ ~ 0.5 0.5 0.5 1 10 normal
execute at @a run playsound entity.generic.explode master @a ~ ~ ~ 0.3 1.5 1.0
tp @s ~ ~-100 ~
kill @s