# Raycasts
execute in sbremake:dreamworld run summon minecraft:marker ~ ~ ~ {UUID:[I;-1953028026,-856931226,-1240793240,-1598231354],Invulnerable:1b,NoGravity:1b,Tags:["raycast1","raycast"],data:{SBRemake:{UUID:'8b972846-ccec-4466-b60a-ff68a0bcecc6'}}}
execute in sbremake:dreamworld run summon minecraft:marker ~ ~ ~ {UUID:[I;-1359934995,-1333768250,-1836555244,-511399816],Invulnerable:1b,NoGravity:1b,Tags:["raycast2","raycast"],data:{SBRemake:{UUID:'aef109ed-b080-4fc6-9288-6414e184a878'}}}
execute in sbremake:dreamworld run summon minecraft:marker ~ ~ ~ {UUID:[I;-481596867,-206420554,-1462093073,-1031935036],Invulnerable:1b,NoGravity:1b,Tags:["raycast3","raycast"],data:{SBRemake:{UUID:'e34b6a3d-f3b2-45b6-a8da-3aefc27debc4'}}}

execute in sbremake:dreamworld run kill @e[tag=emperorHeart]
execute in sbremake:dreamworld run kill @e[tag=stalkerEyeMarker]
execute in sbremake:dreamworld run kill @e[tag=stalkerEyeMarker2]
execute in sbremake:dreamworld run kill @e[tag=mercurius]
execute in sbremake:dreamworld run kill @e[tag=mercuriusSummon]
execute in sbremake:dreamworld run summon marker 88 44 99 {Invulnerable:1b,Tags:["emperorHeartParticleMain","emperorHeart"]}

execute in sbremake:dreamworld run summon magma_cube 100 42.2 88 {Size:0.75,NoAI:1b,NoGravity:1b,Invulnerable:1b,Tags:["spectator","stalkerEyeMarker","noName"],ActiveEffects:[{Id:14,Duration:2147483647,Amplifier:1,ShowParticles:0b}]}
execute in sbremake:dreamworld run summon marker 100 41 88 {NoGravity:1b,Invulnerable:1b,Tags:["spectator","stalkerEyeMarker2"]}

execute in sbremake:dreamworld run summon interaction 88 41 99 {width:4,height:5,Tags:["spectator","emperorHeart","invulnerable"]}
execute in sbremake:dreamworld run summon item_display 88 45 99 {item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1634755910,-714325559,-1358273596,770959820],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTFjNTFiOTQ2Y2I0ODRiOWM3NmIyYzViZjVlYWIwYzc0YzljZWQ5NWYzNWFhODFlNjk5YmQ1ZDliNTdlMjBmIn19fQ=="}]}}}},item_display:"fixed",Glowing:1b,glow_color_override:14745855,interpolation_duration:20,interpolation_start:-1,transformation:[1.5000000000000004f,-0.4393398282201788f,2.560660171779821f,0f,1.5f,2.560660171779821f,-0.4393398282201788f,-1.5f,-2.1213203435596424f,1.5f,1.5000000000000004f,0f,0f,0f,0f,1f],shadow_radius:0f,shadow_strength:0f,Tags:["emperorHeart","bob","spectator"],brightness:{block:15,sky:15},CustomName:'[{"text": "﴾ ","color": "yellow"},{"text": "Emperor\'s Heart","color": "dark_purple"},{"text": " ﴿","color": "yellow"}]',CustomNameVisible:1b}
execute in sbremake:dreamworld run fill 87 41 98 89 44 100 barrier replace air
execute in sbremake:dreamworld run fill 98 41 101 102 57 97 air replace barrier
execute in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/attacks/worldborder/tick
execute in sbremake:dreamworld run scoreboard players set @e[tag=emperorHeart] health 1
execute in sbremake:dreamworld run scoreboard players set @e[tag=emperorHeart,type=interaction] life 5

execute in sbremake:dreamworld run setblock 88 41 99 purpur_slab