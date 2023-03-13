execute unless entity @e[type=item,nbt={Item:{id:"minecraft:golden_sword",Count:1b,tag:{gleaming:1b}}},limit=1] run kill @e[tag=gleam]
team join green @e[type=item,nbt={Item:{id:"minecraft:golden_sword",Count:1b,tag:{gleaming:1b}}},limit=1]

execute if score @p dhGleamingSpawn matches 1..100 run function sbremake:world/dh/item_give
execute if entity @e[tag=decayedHusk,tag=digAnim] run scoreboard players add @p dhRotate 40
execute if entity @e[tag=decayedHusk,tag=!digAnim] run scoreboard players set @p dhRotate 0

execute as @e[tag=decayedHusk,tag=!digAnim] run data merge entity @s {Pose:{Head:[0.00f,1.00f]}}
execute as @e[tag=decayedHusk,tag=!digAnim,tag=tped] unless score @p decayedHuskDigout matches 120.. at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=decayedHusk,tag=!digAnim,tag=tped] unless score @p decayedHuskDigout matches 120.. store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
execute as @e[tag=decayedHuskRotate] run data merge entity @s {Pose:{Head:[0.00f,1.00f]}}

execute as @e[tag=decayedHusk] run data modify entity @s CustomName set from block 24 53 22 Text2
execute at @e[tag=decayedHusk,tag=!digAnim] as @a[distance=..4] unless score @p dhGleamingSpawn matches 1..99 unless score @p decayedHuskDigout matches 151.. run scoreboard players add @s decayedHuskDigout 1
execute at @e[tag=decayedHusk,tag=digAnim] as @p unless score @p dhGleamingSpawn matches 1..99 unless score @p decayedHuskDigout matches 151.. run scoreboard players add @s decayedHuskDigout 1

execute at @e[tag=decayedHusk] as @a[distance=9..] unless entity @e[tag=digAnim] run scoreboard players set @s decayedHuskDigout 0
execute at @e[tag=decayedHusk] as @a[distance=9..] unless entity @e[tag=digAnim] run data merge block 24 53 22 {Text2:''}
execute at @e[tag=decayedHusk] as @a[distance=9..] unless entity @e[tag=digAnim] run data merge entity @e[tag=decayedHusk,limit=1] {CustomNameVisible:0b}

execute if score @p decayedHuskDigout matches 20..80 at @e[tag=decayedHusk] run particle block sandstone ~ ~1.5 ~ 0 0 0 1 10 normal
execute if score @p decayedHuskDigout matches 20 at @e[tag=decayedHusk] run playsound block.sand.hit master @p ~ ~ ~ 1 1 1
execute if score @p decayedHuskDigout matches 40 at @e[tag=decayedHusk] run playsound block.sand.hit master @p ~ ~ ~ 1 1 1
execute if score @p decayedHuskDigout matches 60..80 at @e[tag=decayedHusk] run playsound block.sand.hit master @p ~ ~ ~ 1 1 1

execute unless score @p decayedHuskDigout matches 80.. as @e[tag=decayedHusk,tag=!digAnim,tag=!tped] at @s run tp @s 24.5 54.24 22.5
execute unless score @p decayedHuskDigout matches 80.. as @e[tag=decayedHusk,tag=!digAnim,tag=!tped] at @s run tp @s ~ ~0.01 ~
execute unless score @p decayedHuskDigout matches 80.. as @e[tag=decayedHusk,tag=!digAnim,tag=!tped] run tag @s add tped
execute if score @p decayedHuskDigout matches 121.. as @e[tag=decayedHusk] run tag @s remove tped

execute unless score @p decayedHuskDigout matches 80.. as @e[tag=decayedHusk,tag=!digAnim] run data merge entity @e[tag=decayedHusk,limit=1] {ArmorItems:[{id:"minecraft:leather_leggings",Count:1b,tag:{Damage:0,display:{color:12759680}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12759680}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12759680}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039516145,-1370602688,-1870142304,-602650577],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2UyZTNmYzQyMGNmYThiZjIxNzllY2E4ZGQ3MTkzMjBlZmFhZWFjZWIyYjhiMDY1NGU0Y2VmY2Q4M2E1ZmRhOCJ9fX0="}]}}}}]}
execute unless score @p decayedHuskDigout matches 80.. as @e[tag=decayedHusk,tag=!digAnim] run data merge entity @e[tag=decayedHuskRotate,limit=1] {ArmorItems:[{},{},{},{}]}


execute as @e[tag=decayedHusk,tag=!digAnim] at @s if score @p decayedHuskDigout matches 120.. run data merge entity @s {Pose:{LeftArm:[290f,10f,270f],RightArm:[290f,350f,90f]}}
execute as @e[tag=decayedHusk,tag=!digAnim] at @s unless score @p decayedHuskDigout matches 120.. run data merge entity @s {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

execute if score @p decayedHuskDigout matches 80..120 as @e[tag=decayedHusk] at @s run function sbremake:world/dh/digout
execute if score @p decayedHuskDigout matches 80..120 at @e[tag=decayedHusk] run particle block sandstone ~ ~ ~ 0 0 0 1 10 normal

execute if score @p decayedHuskDigout matches 121.. as @e[tag=decayedHusk,tag=!digAnim] run function sbremake:world/dh/decayed_husk_dialogue

execute as @e[tag=decayedHusk,tag=digAnim] if score @p decayedHuskDigout matches 81.. store result entity @s Rotation[0] float 1 run scoreboard players get @p dhRotate