scoreboard players set @s health 1
scoreboard players remove @s hits 1
execute at @s run particle flame ~ ~-0.5 ~ 0 0 0 0.05 50 normal

execute if entity @s[tag=crying_orb] at @s unless entity @e[tag=cryingOrbIcicle,limit=1] run function sbremake:world/dreamworld/mercurius/attacks/orbs/crying/main