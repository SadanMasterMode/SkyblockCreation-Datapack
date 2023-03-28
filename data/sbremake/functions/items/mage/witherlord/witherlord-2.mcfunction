data merge entity @s {Radius:0,Duration:2147483647,Tags:["witherlord2","witherlord","spectator"]}
summon item_display ~ ~ ~ {Tags:["witherlord2","witherlord","spectator"],Invulnerable:1b,NoGravity:1b,item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-689328864,-1648275810,-1182795162,1053712544],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWRhOTdjMDZjMDdhMDM1YmQ4NzQ2YjQ4ZDMyZGMwNGU4NDE2MGJkMTYxZjI2YmUxMjcyYjYyNzEyNTFhYWE3In19fQ=="}]}}}}}
ride @e[tag=witherlord2,limit=1,type=item_display,tag=!facingPlayer] mount @s

execute as @e[tag=witherlord2,tag=!facingPlayer] at @s run tp @s ~ ~ ~ facing entity aef109ed-b080-4fc6-9288-6414e184a878 feet
tag @e[tag=witherlord2,tag=!facingPlayer] add facingPlayer

tp @s ~ ~ ~ facing entity aef109ed-b080-4fc6-9288-6414e184a878 feet