
execute at @e[tag=stalker_orb] as @a[distance=..10] run effect give @s slowness infinite 3 true
execute at @e[tag=stalker_orb] as @a[distance=10..] run effect clear @s slowness
execute at @e[tag=stalker_orb] as @a[distance=..11] at @s anchored eyes rotated as @e[tag=stalkerEyeLook] positioned ^ ^ ^20 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute unless entity @e[tag=stalkerEyeLook] at @e[tag=stalker_orb] as @a[distance=..10] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spectator","stalkerEyeLook"]}
execute at @a run tp @e[tag=stalkerEyeLook] ~ ~ ~ facing entity @e[tag=stalkerEyeMarker2,limit=1] feet
execute at @e[tag=stalker_orb] as @a[distance=10..] run kill @e[tag=stalkerEyeLook]
execute unless entity @e[tag=stalker_orb] run kill @e[tag=stalkerEyeLook]

execute if entity @e[tag=stalker_orb] as @a at @s anchored eyes positioned ^ ^ ^ anchored feet run function sbremake:world/dreamworld/mercurius/attacks/orbs/stalker/start_ray
execute if entity @a[tag=stalkerEye] run schedule function sbremake:world/dreamworld/mercurius/attacks/orbs/stalker/damage 4t append
execute as @e[tag=cryingOrbIcicle] at @s run tp @s ~ ~-0.5 ~
execute at @e[tag=cryingParticles,limit=1,sort=random] run particle falling_water ~ ~3.5 ~ 0.3 0.3 0.3 0 1 normal
execute at @e[tag=cryingOrbIcicle] unless block ~ ~2.5 ~ #sbremake:items/air positioned ~ ~3 ~ run function sbremake:world/dreamworld/mercurius/attacks/orbs/crying/damage

execute at @e[tag=damage_orb] if entity @a[distance=..7] run schedule function sbremake:world/dreamworld/mercurius/attacks/orbs/damage 1s append
execute at @e[tag=summon_orb] if entity @a[distance=..10] run schedule function sbremake:world/dreamworld/mercurius/attacks/orbs/summon 6s append

execute if entity @e[tag=borderOrb] run schedule function sbremake:world/dreamworld/mercurius/attacks/orbs/rotate_1 3s append