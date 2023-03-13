execute at @e[tag=mercuriusTP] unless entity @e[tag=mercurius,distance=..1] if score @p rand matches 0 run summon evoker ~ ~ ~ {NoAI:1b,Health:1,NoGravity:1b,Tags:["mercuriusFakeout","mercuriusSummon","noName"],DeathLootTable:"minecraft:empty",CustomName:'[{"text":"\\ufd3e","color":"#FFFF55"},{"text":" ☠","color":"#FF5555"},{"text":" Copy-cat ","color":"dark_purple"},{"text":"\\ufd3f ","color": "yellow"},{"text": "1","color":"#55FF55"},{"text":"/","color":"#55FF55"},{"text": "1","color":"#55FF55"},{"text":"\\u2764","color":"#FF5555"}]',CustomNameVisible:1b}
scoreboard players set @e[tag=mercuriusFakeout] health 1
scoreboard players set @e[tag=mercuriusFakeout] maxHealth 1
execute as @e[tag=mercuriusFakeout] at @s run tp @s ~ ~ ~ facing entity @p
execute at @e[tag=mercurius] run kill @e[tag=mercuriusFakeout,distance=..1]
kill @e[tag=mercuriusTP]