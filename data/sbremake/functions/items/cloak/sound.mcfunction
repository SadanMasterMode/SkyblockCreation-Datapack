execute as @r at @s run playsound minecraft:entity.creeper.hurt ambient @p ~ ~ ~ 1000000 1 1
execute if score @p cloakWarn matches 1 run schedule function sbremake:items/cloak/sound 20t