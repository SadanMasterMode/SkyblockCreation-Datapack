execute at @p as @p run summon armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["gravity"]}
execute as @e[tag=gravity] at @p run tp @s ~ ~ ~ ~ ~
tp @p @e[tag=gravity,limit=1]
kill @e[tag=gravity]