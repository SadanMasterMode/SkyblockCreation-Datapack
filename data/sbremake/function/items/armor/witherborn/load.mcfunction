scoreboard objectives add headWitherborn dummy
scoreboard objectives add cpWitherborn dummy
scoreboard objectives add leggingsWitherborn dummy
scoreboard objectives add bootsWitherborn dummy
scoreboard objectives add witherbornCD dummy
scoreboard objectives add witherbornCount dummy
execute unless score @a[limit=1] witherbornCount matches 1.. run scoreboard players set @a[limit=1] witherbornCount 0
execute unless score @a[limit=1] witherbornCD matches 1.. run scoreboard players set @a[limit=1] witherbornCD 0

kill 4addf402-f099-43be-908c-286adb617fd5
summon minecraft:marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["witherbornMarker","spectator"],UUID:[I;1256059906,-258391106,-1869862806,-614367275],data:{SBRemake:{UUID:"4addf402-f099-43be-908c-286adb617fd5"}}}