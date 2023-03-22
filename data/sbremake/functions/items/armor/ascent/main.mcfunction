summon marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["ascendAS","spectator"]}
execute at @e[tag=ascendAS] positioned ~ ~-1 ~ if block ~ ~ ~ #sbremake:items/air run setblock ~ ~ ~ white_stained_glass
scoreboard players remove @s ascendCharge 1
playsound minecraft:block.amethyst_block.place master @s ~ ~ ~