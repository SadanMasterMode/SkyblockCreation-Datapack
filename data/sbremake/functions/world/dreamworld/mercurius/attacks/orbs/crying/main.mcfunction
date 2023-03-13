worldborder set 100 0

function sbremake:utils/random_number
scoreboard players operation @a rand %= #20 const
scoreboard players add @a rand 20

function sbremake:world/dreamworld/mercurius/attacks/orbs/crying/summon
spreadplayers ~ ~ 1 4 false @e[tag=cryingOrbIcicle]
execute as @e[tag=cryingOrbIcicle] run data modify entity @s Pos[1] set from entity @e[tag=crying_orb,limit=1] Pos[1]
execute as @e[tag=cryingOrbIcicle] at @s run tp @s ~ ~10 ~

tag @e[tag=cryingOrbIcicle,limit=3,sort=random] add cryingParticles

worldborder set 4 0