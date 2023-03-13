#Mark the ray as having found a block.

scoreboard players set #hit hydraDistance 1

#Running custom commands since the block was found.
function sbremake:items/berserk/hydra/particles_1/reset

tp @a[tag=hydraAnim] ~ ~-0.5 ~
function sbremake:gravity
summon marker ^ ^ ^30 {Invulnerable:1b,NoGravity:1b,Tags:["hydraMark1","hydraMark","spectator"]}
summon marker ^20 ^ ^30 {Invulnerable:1b,NoGravity:1b,Tags:["hydraMark2","hydraMark","spectator"]}
summon marker ^-20 ^ ^30 {Invulnerable:1b,NoGravity:1b,Tags:["hydraMark3","hydraMark","spectator"]}
summon marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["hydraMark4","hydraMark","spectator"]}

execute at @p positioned ^ ^ ^1 facing entity @e[tag=hydraMark1,limit=1] feet run summon marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["hydraPart1","hydraMark","hydraPart","spectator"]}
execute at @p positioned ^1 ^ ^1 facing entity @e[tag=hydraMark2,limit=1] feet run summon marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["hydraPart2","hydraMark","hydraPart","spectator"]}
execute at @p positioned ^-1 ^ ^1 facing entity @e[tag=hydraMark3,limit=1] feet run summon marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["hydraPart3","hydraMark","hydraPart","spectator"]}
execute as @e[tag=hydraPart1,tag=!hydraTP] at @s run tp @s ~ ~ ~ facing entity @e[tag=hydraMark1,limit=1]
execute as @e[tag=hydraPart2,tag=!hydraTP] at @s run tp @s ~ ~ ~ facing entity @e[tag=hydraMark2,limit=1]
execute as @e[tag=hydraPart3,tag=!hydraTP] at @s run tp @s ~ ~ ~ facing entity @e[tag=hydraMark3,limit=1]
execute as @e[tag=hydraPart2,tag=!hydraTP] at @s run tp @s ^1.25 ^ ^
execute as @e[tag=hydraPart3,tag=!hydraTP] at @s run tp @s ^-1.25 ^ ^

execute as @e[tag=hydraPart,tag=!hydraTP] run tag @s add hydraTP

execute at @e[tag=hydraMark4] facing entity @e[tag=hydraMark1,limit=1] feet positioned ^ ^0.5 ^1 run function sbremake:items/berserk/hydra/particles_1/animate
execute at @e[tag=hydraMark4] facing entity @e[tag=hydraMark2,limit=1] feet positioned ^1.5 ^0.5 ^1 run function sbremake:items/berserk/hydra/particles_2/animate
execute at @e[tag=hydraMark4] facing entity @e[tag=hydraMark3,limit=1] feet positioned ^-1.5 ^0.5 ^1 run function sbremake:items/berserk/hydra/particles_3/animate
tellraw @p {"text": "There are blocks in the way!","color": "red"}

execute as @p at @s unless block ~ ~ ~ #sbremake:items/air run tp @s ~ ~1 ~