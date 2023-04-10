function sbremake:utils/random_number
scoreboard players operation @s rand %= #5 const

tellraw @s[scores={rand=0}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Did you truly think you could defeat me?","color": "white"}]
tellraw @s[scores={rand=1}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Rot with the others who tried.","color": "white"}]
tellraw @s[scores={rand=2}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": What a spectacular performance! For me, of course.","color": "white"}]
tellraw @s[scores={rand=3}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": I would apologize but alas, you're dead!","color": "white"}]
tellraw @s[scores={rand=4}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Haha, tu es mort! J'allais commencer essayer, mais il n'est pas nécessaire","color": "white"}]
playsound entity.evoker.ambient master @s
playsound block.beacon.power_select master @s

worldborder set 30000000 0
scoreboard players reset @a mercuriusDeaths
effect clear @a saturation
gamerule naturalRegeneration true
tag @a remove mercuriusBoss

tp e39dc353-0355-4517-b803-00dee36ca116 ~ ~-100 ~
kill e39dc353-0355-4517-b803-00dee36ca116
kill @e[tag=mercuriusSummon]
execute at @e[tag=mercuriusTotem,type=area_effect_cloud] run fill ~ ~ ~ ~ ~3 ~ air replace barrier
kill @e[tag=mercuriusTotem]
execute in sbremake:dreamworld as @e[tag=mercuriusBomb] on passengers run kill @s
execute in sbremake:dreamworld as @e[tag=mercuriusBomb] run kill @s

tellraw @a [{"text": "This fight is replayable, try again!","color": "dark_gray","italic": true}]