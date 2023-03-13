execute positioned ~-4 ~5 ~-4 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["cryingOrbIcicle","spectator"],NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}]}

scoreboard players remove @a rand 1
execute if entity @a[scores={rand=1..}] run function sbremake:world/dreamworld/mercurius/attacks/orbs/crying/summon