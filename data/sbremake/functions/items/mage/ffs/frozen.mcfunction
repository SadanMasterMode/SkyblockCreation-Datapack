scoreboard players add @s ffsFT 1
data merge entity @s {NoAI:1b}

particle block ice ~ ~1.75 ~ 0 0 0 1 10 normal
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],ArmorDropChances:[0f,0f,0f,0f]}

execute if score @s ffsFT matches 201.. run function sbremake:items/mage/ffs/frozen-end