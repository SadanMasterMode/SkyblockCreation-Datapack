tag @e[tag=mercuriusSummon,type=!evoker_fangs,tag=!mercuriusFakeout] add mercuriusHeal

tellraw @a [{"text": "The Emperor is healing via their summons! Kill them before its too late!","color": "red"}]

function sbremake:utils/random_number
scoreboard players operation @a rand %= #2 const
tellraw @a[scores={rand=0}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": I recommend you go after my minions!","color": "white"}]
tellraw @a[scores={rand=1}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Heal me, feed me!","color": "white"}]
playsound entity.evoker.ambient master @a

execute at e39dc353-0355-4517-b803-00dee36ca116 run particle dust{color:[0.016,1.0,0.0],scale:1} ~ ~0.5 ~ 0.5 0.5 0.5 1 10 normal
execute as @a at @s run playsound entity.ghast.scream master @s ~ ~ ~