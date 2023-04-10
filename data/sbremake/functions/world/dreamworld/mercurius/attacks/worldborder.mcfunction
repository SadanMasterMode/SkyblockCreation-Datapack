worldborder center 100 99
worldborder set 4 0
worldborder damage amount 0
worldborder warning distance 0
worldborder warning time 0

kill @e[tag=mercuriusFakeout]
kill @e[tag=mercuriusSummon]

summon marker 100 43 99 {Invulnerable:1b,NoGravity:1b,Tags:["posCheck"]}
execute at @e[tag=posCheck] as @a[distance=..5] run tellraw @s [{"text": "You can't be in there!","color": "dark_gray"}]
execute at @e[tag=posCheck] as @a[distance=..5] run tp @s 94 41 99
kill @e[tag=posCheck]

function sbremake:utils/random_number
scoreboard players operation @a rand %= #6 const
tellraw @a[scores={rand=0}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Your time here is over!","color": "white"}]
tellraw @a[scores={rand=1}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Au revoir Monsieur, vous êtes très cuit!","color": "white"}]
tellraw @a[scores={rand=2}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": You won't survive this one!","color": "white"}]
tellraw @a[scores={rand=3}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Kekkai no Ninjutsu!","color": "white"}]
tellraw @a[scores={rand=4}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Beam him up, scotty!","color": "white"}]
tellraw @a[scores={rand=5}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Oh, ","color": "white"},{"text": "now","color": "white","italic": true},{"text": " you have my attention!","color": "white","italic": false}]
playsound entity.evoker.ambient master @a
playsound entity.wither.spawn master @a

execute if score @s phase matches 3 run function sbremake:world/dreamworld/mercurius/attacks/worldborder/4
execute if score @s phase matches 2 run function sbremake:world/dreamworld/mercurius/attacks/worldborder/3
execute if score @s phase matches 1 run function sbremake:world/dreamworld/mercurius/attacks/worldborder/2
execute if score @s phase matches 0 run function sbremake:world/dreamworld/mercurius/attacks/worldborder/1

schedule function sbremake:world/dreamworld/mercurius/attacks/orbs/summon 8s append
execute if entity @e[tag=damage_orb] run function sbremake:world/dreamworld/mercurius/attacks/orbs/damage
