advancement revoke @s only sbremake:mercurius/fakeout
attribute @s generic.knockback_resistance base set 100
damage @s 18 player_attack by e39dc353-0355-4517-b803-00dee36ca116
attribute @s generic.knockback_resistance base set 0
effect give @s blindness 10 2 true
tellraw @s [{"text":"You hit a Copy-cat!","color": "red"}]

function sbremake:utils/random_number
scoreboard players operation @a rand %= #5 const
tellraw @a[scores={rand=0}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": You look like a real fool!","color": "white"}]
tellraw @a[scores={rand=1}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": How did you fall for the oldest trick in the book?","color": "white"}]
tellraw @a[scores={rand=2}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": That's embarassing.","color": "white"}]
tellraw @a[scores={rand=3}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": It literally says \"Copy Cat\" in the name!","color": "white"}]
tellraw @a[scores={rand=4}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": You got too greedy!","color": "white"}]
playsound entity.evoker.ambient master @s
playsound entity.ender_dragon.growl master @s