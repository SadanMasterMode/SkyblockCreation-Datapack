execute at @p run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ascendAS","spectator"],Marker:1b}
execute at @e[tag=ascendAS] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:white_stained_glass replace air
scoreboard players remove @p ascendCharge 1
execute at @p run playsound minecraft:block.amethyst_block.place master @p ~ ~ ~