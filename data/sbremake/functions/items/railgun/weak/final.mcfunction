tp @e[tag=weakRail] ~ ~-100 ~
kill @e[tag=weakRail]
execute unless score @p weakRailCheck matches 1 if score @p weakrailCharge matches 1.. run function sbremake:items/railgun/weak/charge1

execute at @p run playsound entity.generic.explode master @p ~ ~ ~

execute as @p at @s run summon minecraft:iron_golem ~ ~10 ~ {Health:100,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["weakRail","lc"],ActiveEffects:[{Id:14,Duration:100000,Amplifier:-1,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100d}]}

execute if score @p weakrailCharge matches 1..20 at @e[tag=weakRail1] run particle dust 0.8 1.0 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 25 normal
execute if score @p weakrailCharge matches 1..20 at @e[tag=weakRail2] run particle dust 0.8 1.0 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 25 normal
execute if score @p weakrailCharge matches 1..20 at @e[tag=weakRail3] run particle dust 0.8 1.0 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 25 normal
execute if score @p weakrailCharge matches 1..20 at @e[tag=weakRail4] run particle dust 0.8 1.0 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 25 normal
execute if score @p weakrailCharge matches 1..20 at @e[tag=weakRail5] run particle dust 0.8 1.0 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 25 normal
execute if score @p weakrailCharge matches 1..20 at @e[tag=weakRail6] run particle dust 0.8 1.0 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 1..20 at @e[tag=weakRail7] run particle dust 0.8 1.0 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 1..20 at @e[tag=weakRail8] run particle dust 0.8 1.0 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 1..20 at @e[tag=weakRail9] run particle dust 0.8 1.0 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 1..20 at @e[tag=weakRail10] run particle dust 0.8 1.0 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal

execute if score @p weakrailCharge matches 21..40 at @e[tag=weakRail1] run particle dust 1 0.835 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 21..40 at @e[tag=weakRail2] run particle dust 1 0.835 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 21..40 at @e[tag=weakRail3] run particle dust 1 0.835 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 21..40 at @e[tag=weakRail4] run particle dust 1 0.835 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 21..40 at @e[tag=weakRail5] run particle dust 1 0.835 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 21..40 at @e[tag=weakRail6] run particle dust 1 0.835 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 21..40 at @e[tag=weakRail7] run particle dust 1 0.835 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 21..40 at @e[tag=weakRail8] run particle dust 1 0.835 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 21..40 at @e[tag=weakRail9] run particle dust 1 0.835 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 21..40 at @e[tag=weakRail10] run particle dust 1 0.835 0.0 1.0 ~ ~1.5 ~ 0 0 0 0 10 normal

execute if score @p weakrailCharge matches 41..60 at @e[tag=weakRail1] run particle dust 1 0.651 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 41..60 at @e[tag=weakRail2] run particle dust 1 0.651 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 41..60 at @e[tag=weakRail3] run particle dust 1 0.651 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 41..60 at @e[tag=weakRail4] run particle dust 1 0.651 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 41..60 at @e[tag=weakRail5] run particle dust 1 0.651 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 41..60 at @e[tag=weakRail6] run particle dust 1 0.651 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 41..60 at @e[tag=weakRail7] run particle dust 1 0.651 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 41..60 at @e[tag=weakRail8] run particle dust 1 0.651 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 41..60 at @e[tag=weakRail9] run particle dust 1 0.651 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 41..60 at @e[tag=weakRail10] run particle dust 1 0.651 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal

execute if score @p weakrailCharge matches 61..80 at @e[tag=weakRail1] run particle dust 1 0.369 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 61..80 at @e[tag=weakRail2] run particle dust 1 0.369 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 61..80 at @e[tag=weakRail3] run particle dust 1 0.369 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 61..80 at @e[tag=weakRail4] run particle dust 1 0.369 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 61..80 at @e[tag=weakRail5] run particle dust 1 0.369 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 61..80 at @e[tag=weakRail6] run particle dust 1 0.369 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 61..80 at @e[tag=weakRail7] run particle dust 1 0.369 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 61..80 at @e[tag=weakRail8] run particle dust 1 0.369 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 61..80 at @e[tag=weakRail9] run particle dust 1 0.369 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 61..80 at @e[tag=weakRail10] run particle dust 1 0.369 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal

execute if score @p weakrailCharge matches 81.. at @e[tag=weakRail1] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 81.. at @e[tag=weakRail2] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 81.. at @e[tag=weakRail3] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 81.. at @e[tag=weakRail4] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 81.. at @e[tag=weakRail5] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 81.. at @e[tag=weakRail6] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 81.. at @e[tag=weakRail7] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 81.. at @e[tag=weakRail8] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 81.. at @e[tag=weakRail9] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal
execute if score @p weakrailCharge matches 81.. at @e[tag=weakRail10] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 10 normal

execute at @e[tag=weakRail1] run effect give @e[distance=..2,tag=!undead,tag=!weakRail] instant_damage 1 7 true
execute at @e[tag=weakRail1] run effect give @e[distance=..2,tag=undead] instant_health 1 7 true
execute at @e[tag=weakRail2] run effect give @e[distance=..2,tag=!undead,tag=!weakRail] instant_damage 1 7 true
execute at @e[tag=weakRail2] run effect give @e[distance=..2,tag=undead] instant_health 1 7 true
execute at @e[tag=weakRail3] run effect give @e[distance=..2,tag=!undead,tag=!weakRail] instant_damage 1 7 true
execute at @e[tag=weakRail3] run effect give @e[distance=..2,tag=undead] instant_health 1 7 true
execute at @e[tag=weakRail4] run effect give @e[distance=..2,tag=!undead,tag=!weakRail] instant_damage 1 7 true
execute at @e[tag=weakRail4] run effect give @e[distance=..2,tag=undead] instant_health 1 7 true
execute at @e[tag=weakRail5] run effect give @e[distance=..2,tag=!undead,tag=!weakRail] instant_damage 1 7 true
execute at @e[tag=weakRail5] run effect give @e[distance=..2,tag=undead] instant_health 1 7 true
execute at @e[tag=weakRail6] run effect give @e[distance=..2,tag=!undead,tag=!weakRail] instant_damage 1 7 true
execute at @e[tag=weakRail6] run effect give @e[distance=..2,tag=undead] instant_health 1 7 true
execute at @e[tag=weakRail7] run effect give @e[distance=..2,tag=!undead,tag=!weakRail] instant_damage 1 7 true
execute at @e[tag=weakRail7] run effect give @e[distance=..2,tag=undead] instant_health 1 7 true
execute at @e[tag=weakRail8] run effect give @e[distance=..2,tag=!undead,tag=!weakRail] instant_damage 1 7 true
execute at @e[tag=weakRail8] run effect give @e[distance=..2,tag=undead] instant_health 1 7 true
execute at @e[tag=weakRail9] run effect give @e[distance=..2,tag=!undead,tag=!weakRail] instant_damage 1 7 true
execute at @e[tag=weakRail9] run effect give @e[distance=..2,tag=undead] instant_health 1 7 true
execute at @e[tag=weakRail10] run effect give @e[distance=..2,tag=!undead,tag=!weakRail] instant_damage 1 7 true
execute at @e[tag=weakRail10] run effect give @e[distance=..2,tag=undead] instant_health 1 7 true

scoreboard players set @p weakrailCharge 0
scoreboard players set @p weakRail 0
scoreboard players set @p weakRailCheck 1