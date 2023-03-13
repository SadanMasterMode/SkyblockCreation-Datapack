worldborder center 100 99
worldborder set 4 0
worldborder damage amount 0
worldborder warning distance 0
worldborder warning time 0

summon marker 100 43 99 {Invulnerable:1b,NoGravity:1b,Tags:["posCheck"]}
execute at @e[tag=posCheck] as @a[distance=..5] run tellraw @s [{"text": "You can't be in there!","color": "dark_gray"}]
execute at @e[tag=posCheck] as @a[distance=..5] run tp @s 94 41 99
kill @e[tag=posCheck]

execute if score @s phase matches 3 run function sbremake:world/dreamworld/mercurius/attacks/worldborder/4
execute if score @s phase matches 2 run function sbremake:world/dreamworld/mercurius/attacks/worldborder/3
execute if score @s phase matches 1 run function sbremake:world/dreamworld/mercurius/attacks/worldborder/2
execute if score @s phase matches 0 run function sbremake:world/dreamworld/mercurius/attacks/worldborder/1

schedule function sbremake:world/dreamworld/mercurius/attacks/orbs/summon 8s append
execute if entity @e[tag=damage_orb] run function sbremake:world/dreamworld/mercurius/attacks/orbs/damage
