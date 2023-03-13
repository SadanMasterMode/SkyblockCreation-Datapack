execute at @e[tag=fury] run particle flame ~ ~ ~ 0 0 0 0.15 1000 normal
execute at @e[tag=fury] run particle flame ~ ~ ~ 0 0 0 0.15 1000 normal
execute at @e[tag=fury] run particle smoke ~ ~ ~ 0 0 0 0.15 1000 normal
execute at @e[tag=fury] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[furyMark]}
execute at @e[tag=fury] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[furyMark2]}

execute at @p run playsound entity.blaze.death master @p ~ ~ ~

kill @e[tag=fury]