execute at @p run summon marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["ascendAS","spectator"]}
execute at @e[tag=ascendAS] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:white_stained_glass replace air
scoreboard players remove @p ascendCharge 1
execute at @p run playsound minecraft:block.amethyst_block.place master @p ~ ~ ~