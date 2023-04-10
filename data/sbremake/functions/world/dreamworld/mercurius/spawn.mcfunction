# Raycasts
execute in sbremake:dreamworld run summon minecraft:marker ~ ~ ~ {UUID:[I;-1953028026,-856931226,-1240793240,-1598231354],Invulnerable:1b,NoGravity:1b,Tags:["raycast1","raycast"],data:{SBRemake:{UUID:'8b972846-ccec-4466-b60a-ff68a0bcecc6'}}}
execute in sbremake:dreamworld run summon minecraft:marker ~ ~ ~ {UUID:[I;-1359934995,-1333768250,-1836555244,-511399816],Invulnerable:1b,NoGravity:1b,Tags:["raycast2","raycast"],data:{SBRemake:{UUID:'aef109ed-b080-4fc6-9288-6414e184a878'}}}
execute in sbremake:dreamworld run summon minecraft:marker ~ ~ ~ {UUID:[I;-481596867,-206420554,-1462093073,-1031935036],Invulnerable:1b,NoGravity:1b,Tags:["raycast3","raycast"],data:{SBRemake:{UUID:'e34b6a3d-f3b2-45b6-a8da-3aefc27debc4'}}}

execute in sbremake:dreamworld run kill @e[tag=emperorHeart]
execute in sbremake:dreamworld run kill @e[tag=stalkerEyeMarker]
execute in sbremake:dreamworld run kill @e[tag=stalkerEyeMarker2]
execute at @e[tag=mercuriusTotem,type=area_effect_cloud] run fill ~ ~ ~ ~ ~3 ~ air replace barrier
execute in sbremake:dreamworld run kill @e[tag=mercuriusTotem]
execute in sbremake:dreamworld as @e[tag=mercuriusBomb] on passengers run kill @s
execute in sbremake:dreamworld as @e[tag=mercuriusBomb] run kill @s
execute in sbremake:dreamworld run kill e39dc353-0355-4517-b803-00dee36ca116
execute in sbremake:dreamworld run kill @e[tag=mercuriusSummon]
execute in sbremake:dreamworld run kill @e[tag=mercuriusDeath]

execute in sbremake:dreamworld run summon magma_cube 100 42.2 88 {Size:0.75,NoAI:1b,NoGravity:1b,Invulnerable:1b,Tags:["spectator","stalkerEyeMarker","noName","invulnerable"],ActiveEffects:[{Id:14,Duration:2147483647,Amplifier:1,ShowParticles:0b},{Id:11,Duration:2147483647,Amplifier:5,ShowParticles:0b},{Id:10,Amplifier:100,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"minecraft:generic.max_health",Base:1024d}],Health:1024f}
# "a18f5f43-201f-46d4-98fd-f6848a9acbb6"

execute in sbremake:dreamworld run summon marker 100 41 88 {NoGravity:1b,Invulnerable:1b,Tags:["spectator","stalkerEyeMarker2"],UUID:[I;-1231861713,1381516989,-1340052053,392294511]}
# "b693482f-5258-46bd-b020-6dab1761f06f"

execute in sbremake:dreamworld run summon interaction 88 41 99 {width:4,height:5,Tags:["spectator","emperorHeart","invulnerable"],UUID:[I;-1133559440,1796295215,-1281306405,1344796794]}
# "bc6f4170-6b11-4a2f-b3a0-d0db5027f87a"
execute in sbremake:dreamworld run summon item_display 88 45 99 {item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1634755910,-714325559,-1358273596,770959820],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTFjNTFiOTQ2Y2I0ODRiOWM3NmIyYzViZjVlYWIwYzc0YzljZWQ5NWYzNWFhODFlNjk5YmQ1ZDliNTdlMjBmIn19fQ=="}]}}}},item_display:"fixed",Glowing:1b,glow_color_override:14745855,interpolation_duration:20,interpolation_start:-1,transformation:[1.5000000000000004f,-0.4393398282201788f,2.560660171779821f,0f,1.5f,2.560660171779821f,-0.4393398282201788f,-1.5f,-2.1213203435596424f,1.5f,1.5000000000000004f,0f,0f,0f,0f,1f],shadow_radius:0f,shadow_strength:0f,Tags:["emperorHeart","bob","spectator"],brightness:{block:15,sky:15},CustomName:'[{"text": "﴾ ","color": "yellow"},{"text": "Emperor\'s Heart","color": "dark_purple"},{"text": " ﴿","color": "yellow"}]',CustomNameVisible:1b,UUID:[I;1096484513,-529185985,-1112791989,1134639908]}
# "415b06a1-e075-433f-bdac-244b43a13b24"
execute in sbremake:dreamworld run fill 87 41 98 89 44 100 barrier replace air
execute in sbremake:dreamworld run fill 98 41 101 102 57 97 air replace barrier
execute in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/attacks/worldborder/tick
execute in sbremake:dreamworld run scoreboard players set @e[tag=emperorHeart] health 1
execute in sbremake:dreamworld run scoreboard players set @e[tag=emperorHeart,type=interaction] life 5

execute in sbremake:dreamworld run setblock 88 41 99 purpur_slab

scoreboard players reset @a mercuriusDeaths
scoreboard players set #mercurius-death-2 fakePlayers 0
scoreboard players set #mercuriusDeath fakePlayers 0
scoreboard players set #killed-mercurius fakePlayers 0