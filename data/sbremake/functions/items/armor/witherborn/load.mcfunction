scoreboard objectives add headWitherborn dummy
scoreboard objectives add cpWitherborn dummy
scoreboard objectives add leggingsWitherborn dummy
scoreboard objectives add bootsWitherborn dummy
scoreboard objectives add witherbornCD dummy
scoreboard objectives add witherbornCount dummy
scoreboard players set @p witherbornCount 0

kill @e[tag=witherbornMarker]
summon minecraft:marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["witherbornMarker"]}