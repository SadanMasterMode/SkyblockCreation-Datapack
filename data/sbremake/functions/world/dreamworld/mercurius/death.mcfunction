function sbremake:utils/random_number
scoreboard players operation @a rand %= #5 const

tellraw @a[scores={rand=0}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Argh-!","color": "white"}]
tellraw @a[scores={rand=1}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": How could you-!","color": "white"}]
tellraw @a[scores={rand=2}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Noo-!","color": "white"}]
tellraw @a[scores={rand=3}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": My power-!","color": "white"}]
tellraw @a[scores={rand=4}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": You'll pay for this-!","color": "white"}]

particle large_smoke ~ ~ ~ 0 0 0 1 1000 normal
particle cloud ~ ~ ~ 0 0 0 1 1000 normal
particle ash ~ ~ ~ 0 0 0 1 1000 normal
particle reverse_portal ~ ~ ~ 0 0 0 0.1 1000 normal
playsound entity.wither.hurt master @a[distance=..10]

summon area_effect_cloud ~ ~-0.5 ~ {Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1634755910,-714325559,-1358273596,770959820],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTFjNTFiOTQ2Y2I0ODRiOWM3NmIyYzViZjVlYWIwYzc0YzljZWQ5NWYzNWFhODFlNjk5YmQ1ZDliNTdlMjBmIn19fQ=="}]}}}},item_display:"fixed",Tags:["mercuriusDeath","spectator"],brightness:{block:15,sky:15}}],Radius:0,Duration:2147483647,Tags:["mercuriusDeath","spectator"],UUID:[I;-759722822,-635156446,-1860774682,-1188487243]}
# d2b78cba-da24-4822-9116-d4e6b9291fb5

scoreboard players set #killed-mercurius fakePlayers 1
scoreboard players set #killedMercurius fakePlayers 1
tag @a remove mercuriusBoss

scoreboard players reset @s health
tp e39dc353-0355-4517-b803-00dee36ca116 ~ ~-100 ~
kill e39dc353-0355-4517-b803-00dee36ca116
kill @e[tag=mercuriusSummon]
execute at @e[tag=mercuriusTotem,type=area_effect_cloud] run fill ~ ~ ~ ~ ~3 ~ air replace barrier
kill @e[tag=mercuriusTotem]
execute in sbremake:dreamworld as @e[tag=mercuriusBomb] on passengers run kill @s
execute in sbremake:dreamworld as @e[tag=mercuriusBomb] run kill @s