execute as @a unless entity @s[predicate=sbremake:items/armor/witherborn/wearing-all] run scoreboard players set @s witherbornCD 0
execute at @a run tp 4addf402-f099-43be-908c-286adb617fd5 ~ ~-3.5 ~
execute at @e[tag=witherbornMarked] run tp 638e122c-b657-4d30-a679-7358a2d5f184 ~ ~-3.5 ~

# Rotate stand
execute as 4addf402-f099-43be-908c-286adb617fd5 at @s run tp @s ~ ~ ~ ~2 ~

# Summon stand (dreamworld problems)
execute unless entity 4addf402-f099-43be-908c-286adb617fd5 run summon minecraft:marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["witherbornMarker","spectator"],UUID:[I;1256059906,-258391106,-1869862806,-614367275],data:{SBRemake:{UUID:"4addf402-f099-43be-908c-286adb617fd5"}}}

# Teleport witherborns to beside player (1, 2)
execute as fccff781-547f-498c-b424-1297596e1d57 at 4addf402-f099-43be-908c-286adb617fd5 unless entity @e[tag=witherbornMarked] run tp @s ^ ^ ^1.5
execute as e4e3300c-d322-4618-a0dc-ea79d82d2844 at 4addf402-f099-43be-908c-286adb617fd5 if function sbremake:items/armor/witherborn/conditions/check-entities run tp @s ^ ^ ^-1.5

# Main
scoreboard players add @a[scores={witherbornCD=..599}] witherbornCD 1
execute as @a[predicate=sbremake:items/armor/witherborn/wearing-all,scores={witherbornCD=600,witherbornCount=..1}] run function sbremake:items/armor/witherborn/main

# If either witherborn is alive, mark the nearest entity within 12 blocks and summon a stand under them.
execute if entity fccff781-547f-498c-b424-1297596e1d57 at @a as @e[distance=..12,tag=!spectator,type=!#sbremake:never-detect,limit=1,sort=nearest,tag=!dwindlerDream] at @s unless entity 638e122c-b657-4d30-a679-7358a2d5f184 run summon minecraft:marker ~ ~-3.5 ~ {Invulnerable:1b,NoGravity:1b,Tags:["witherbornStand"],UUID:[I;1670255148,-1235792592,-1501990056,-1563037308],data:{SBRemake:{UUID:"638e122c-b657-4d30-a679-7358a2d5f184"}}}
execute if entity e4e3300c-d322-4618-a0dc-ea79d82d2844 at @a as @e[distance=..12,tag=!spectator,type=!#sbremake:never-detect,limit=1,sort=nearest,tag=!dwindlerDream] at @s unless entity 638e122c-b657-4d30-a679-7358a2d5f184 run summon minecraft:marker ~ ~-3.5 ~ {Invulnerable:1b,NoGravity:1b,Tags:["witherbornStand"],UUID:[I;1670255148,-1235792592,-1501990056,-1563037308],data:{SBRemake:{UUID:"638e122c-b657-4d30-a679-7358a2d5f184"}}}

execute if entity fccff781-547f-498c-b424-1297596e1d57 at @a as @e[type=!#sbremake:never-detect,distance=..12,tag=!spectator,limit=1,sort=nearest,tag=!dwindlerDream] unless entity @e[tag=witherbornMarked,limit=1] run tag @s add witherbornMarked
execute if entity e4e3300c-d322-4618-a0dc-ea79d82d2844 at @a as @e[type=!#sbremake:never-detect,distance=..12,tag=!spectator,limit=1,sort=nearest,tag=!dwindlerDream] unless entity @e[tag=witherbornMarked,limit=1] run tag @s add witherbornMarked

execute if entity @e[tag=witherbornMarked] run function sbremake:items/armor/witherborn/final