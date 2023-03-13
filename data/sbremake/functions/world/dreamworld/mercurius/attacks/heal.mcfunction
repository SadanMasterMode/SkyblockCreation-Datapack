tellraw @a [{"text": "You failed to kill ","color": "red"},{"score":{"name": "#mercuriusHeal","objective": "count"},"color": "red"},{"text": " of the Emperor's summons!","color": "red"}]
execute as @e[tag=mercuriusHeal] unless score @e[tag=mercurius,limit=1] health matches 2481.. run scoreboard players add @e[tag=mercurius] health 50
scoreboard players reset #mercuriusHeal life
execute at @e[tag=mercuriusHeal] run particle cloud ~ ~1 ~ 0 0 0 0.2 100 normal
kill @e[tag=mercuriusHeal]