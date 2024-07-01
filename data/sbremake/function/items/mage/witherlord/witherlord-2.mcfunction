data merge entity @s {Radius:0,Duration:2147483647,Tags:["witherlord2","witherlord","spectator","projectile"]}
summon item_display ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["witherlord2","witherlord","spectator","projectile"],item:{components:{"minecraft:profile":{id:[I;-689328864,-1648275810,-1182795162,1053712544],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWRhOTdjMDZjMDdhMDM1YmQ4NzQ2YjQ4ZDMyZGMwNGU4NDE2MGJkMTYxZjI2YmUxMjcyYjYyNzEyNTFhYWE3In19fQ=="}]}},count:1,id:"minecraft:player_head"},transformation:[-1.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,-1.0f,0.0f,0.0f,0.0f,0.0f,1.0f]}
ride @e[tag=witherlord2,limit=1,type=item_display,tag=!facingPlayer] mount @s

execute as @e[tag=witherlord2,tag=!facingPlayer] at @s run tp @s ~ ~ ~ facing entity aef109ed-b080-4fc6-9288-6414e184a878 feet
tag @e[tag=witherlord2,tag=!facingPlayer] add facingPlayer

tp @s ~ ~ ~ facing entity aef109ed-b080-4fc6-9288-6414e184a878 feet