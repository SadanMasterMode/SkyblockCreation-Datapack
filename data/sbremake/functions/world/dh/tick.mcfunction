execute as @a[scores={dhGleamingSpawn=1..100}] run function sbremake:world/dh/item_give
execute unless entity @e[tag=float,nbt={Item:{id:"minecraft:golden_sword",Count:1b,tag:{gleaming:1b}}},limit=1] run kill 65c8d019-32a4-427b-b8e3-f25695fceb22

execute as d0af5e0a-62b5-4f3f-a110-1d01d54ec414 at @s run tp @s ~ ~ ~ facing entity @a[limit=1] eyes
execute unless entity 8360a17e-8886-4bdb-8929-d271f0c4a4cc if score #inWorld fakePlayers matches 1 run summon armor_stand 24 54.2 22 {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Damage:0,display:{color:12759680}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12759680}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12759680}}},{}],HandItems:[{},{}],Tags:["objective","decayedHusk","spectator"],DisabledSlots:4144959,Pose:{Head:[180f,0f,0f],LeftArm:[270f,355f,0f],RightArm:[270f,5f,0f]},UUID:[I;-2090819202,-2004464677,-1993747855,-255548212],Passengers:[{id:"item_display",item:{id:"minecraft:player_head",Count:1,tag:{SkullOwner:{Id:[I;2039516145,-1370602688,-1870142304,-602650577],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2UyZTNmYzQyMGNmYThiZjIxNzllY2E4ZGQ3MTkzMjBlZmFhZWFjZWIyYjhiMDY1NGU0Y2VmY2Q4M2E1ZmRhOCJ9fX0="}]}}}},billboard:"fixed",Tags:["decayedHusk","spectator"],transformation:[-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,-0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],UUID:[I;-793813494,1656049471,-1592779519,-716258284],brightness:{block:15,sky:15}}]}
# 8360a17e-8886-4bdb-8929-d271f0c4a4cc
# d0af5e0a-62b5-4f3f-a110-1d01d54ec414

execute as @a[distance=..6,scores={decayedHuskDigout=..100},tag=!digAnim] run scoreboard players add @s decayedHuskDigout 1
execute as @a[distance=6..] run function sbremake:world/dh/leave

execute if score @a[limit=1] decayedHuskDigout matches 60..100 run playsound block.sand.hit master @a[distance=..10] ~ ~ ~ 1 1 1
execute if score @a[limit=1] decayedHuskDigout matches 20..100 run particle block sandstone ~ ~1.5 ~ 0 0 0 1 10 normal

execute if score @a[tag=!digAnim,limit=1] decayedHuskDigout matches 100.. run function sbremake:world/dh/digout

execute as @a[tag=digAnim] run function sbremake:world/dh/decayed_husk_dialogue