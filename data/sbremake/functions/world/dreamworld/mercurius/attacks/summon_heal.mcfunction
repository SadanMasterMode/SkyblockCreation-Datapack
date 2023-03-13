tag @e[tag=mercuriusSummon,type=!evoker_fangs,tag=!mercuriusFakeout] add mercuriusHeal
tellraw @a [{"text": "The Emperor is healing via their summons! Kill them before its too late!","color": "red","bold": true}]
execute as @a at @s run playsound entity.ghast.scream master @s ~ ~ ~