data merge entity @s {Radius:0,Duration:2147483647,Tags:["witherlord1","witherlord","spectator","projectile"]}
summon item_display ~ ~ ~ {Tags:["witherlord1","witherlord","spectator","projectile"],Invulnerable:1b,NoGravity:1b,item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-689328864,-1648275810,-1182795162,1053712544],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWRhOTdjMDZjMDdhMDM1YmQ4NzQ2YjQ4ZDMyZGMwNGU4NDE2MGJkMTYxZjI2YmUxMjcyYjYyNzEyNTFhYWE3In19fQ=="}]}}}}}
ride @e[tag=witherlord1,limit=1,type=item_display,tag=!facingPlayer] mount @s

execute as @e[tag=witherlord1,tag=!facingPlayer] at @s run tp @s ~ ~ ~ facing entity 8b972846-ccec-4466-b60a-ff68a0bcecc6 feet
tag @e[tag=witherlord1,tag=!facingPlayer] add facingPlayer

tp @s ~ ~ ~ facing entity 8b972846-ccec-4466-b60a-ff68a0bcecc6 feet