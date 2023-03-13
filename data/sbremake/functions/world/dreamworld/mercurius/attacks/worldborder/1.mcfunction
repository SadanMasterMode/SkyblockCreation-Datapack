scoreboard players set @s phase 1
tellraw @a [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Kekkai no Ninjutsu!","color": "white"}]
tag @s add mercuriusShield
tag @s add invulnerable

fill 98 41 101 102 57 97 barrier replace air
fill 100 43 99 100 44 99 air replace barrier
tp @e[tag=mercurius] 100.5 43 99.5
tellraw @a [{"text": "Destroy the Barrier Orbs to damage the boss!","color": "dark_gray","italic": true}]

execute positioned 111 43 99 run summon item_display ~ ~ ~ {Glowing:1b,glow_color_override:1966335,item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-123210,4309,1391,-8618],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2RhYWRmODJiYjY3ODI2ZDZkMzNjZTdkODY2ZDU0M2FlMzUxZWFmYWQ3Y2IzOWFhMzhlOTU4YTA1ZDY4OTI4NCJ9fX0="}]}}}},Tags:["not_kill","summon_orb","mercuriusSummon","newDmg","borderOrb"],CustomNameVisible:1b}
scoreboard players set @e[tag=borderOrb] health 1
scoreboard players set @e[tag=borderOrb] hits 16
function sbremake:world/dreamworld/mercurius/attacks/orbs/rotate_1