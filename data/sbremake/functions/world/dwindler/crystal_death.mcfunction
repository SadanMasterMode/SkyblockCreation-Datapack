tag @s[tag=!crystalDeath] add crystalDeath
scoreboard players add @s crystalDeath 1

execute if score @s crystalDeath matches 1..199 at @e[type=end_crystal,tag=crystalHeart] run particle minecraft:portal ~ ~0.5 ~ 0 0 0 1 1000 normal

execute if score @s crystalDeath matches 199..299 at @e[type=end_crystal,tag=crystalHeart] run particle minecraft:crimson_spore ~ ~0.5 ~ 0 0 0 100 1000 normal
execute if score @s crystalDeath matches 199..299 at @e[type=end_crystal,tag=crystalHeart] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.1 50 normal
execute if score @s crystalDeath matches 199..299 at @e[type=end_crystal,tag=crystalHeart] run playsound entity.wither.hurt hostile @p ~ ~3 ~ 1
execute if score @s crystalDeath matches 300.. run tag @s remove crystalDeath
execute if score @s crystalDeath matches 300.. at @e[type=end_crystal,tag=crystalHeart] run particle explosion_emitter ~ ~0.5 ~ 0 0 0 1 10 normal
execute if score @s crystalDeath matches 300.. at @e[type=end_crystal,tag=crystalHeart] run playsound entity.wither.death master @p ~ ~3 ~ 1
execute if score @s crystalDeath matches 300.. run kill @e[tag=crystalHeart]
execute if score @s crystalDeath matches 300.. run scoreboard players set #killedDwindler fakePlayers 1
execute if score @s crystalDeath matches 300.. run kill @e[tag=dwindlerDream]
execute if score @s crystalDeath matches 300.. positioned 57.5 45 -51.5 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1695604743,2120698196,-1934226442,-2062254106],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjMwY2U3NzVlZGI2NWRiOGMyNzQxYmRmYWU4NGYzYzBkMDI4NWFiYTkzYWZhZGM3NDkwMGQ1NWRmZDk1MDRhNSJ9fX0="}]}}}}],HandItems:[{},{}],Tags:["dwindlerDream"],DisabledSlots:4144959}
execute if score @s crystalDeath matches 300.. run scoreboard players reset @a crystalDeath