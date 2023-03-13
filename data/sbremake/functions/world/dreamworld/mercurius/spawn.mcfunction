kill @e[tag=emperorHeart]
kill @e[tag=stalkerEyeMarker]
kill @e[tag=mercurius]
kill @e[tag=mercuriusSummon]
summon marker 88 44 99 {Invulnerable:1b,Tags:["emperorHeartParticleMain","emperorHeart"]}
summon marker 91 41 102 {Invulnerable:1b,Tags:["emperorHeartParticle","emperorHeart"]}
summon marker 91 41 96 {Invulnerable:1b,Tags:["emperorHeartParticle","emperorHeart"]}
summon marker 85 41 96 {Invulnerable:1b,Tags:["emperorHeartParticle","emperorHeart"]}
summon marker 85 41 102 {Invulnerable:1b,Tags:["emperorHeartParticle","emperorHeart"]}

summon marker 89 41 103 {Invulnerable:1b,Tags:["emperorHeartParticle","emperorHeart"]}
summon marker 87 41 103 {Invulnerable:1b,Tags:["emperorHeartParticle","emperorHeart"]}
summon marker 84 41 100 {Invulnerable:1b,Tags:["emperorHeartParticle","emperorHeart"]}
summon marker 84 41 98 {Invulnerable:1b,Tags:["emperorHeartParticle","emperorHeart"]}
summon marker 87 41 95 {Invulnerable:1b,Tags:["emperorHeartParticle","emperorHeart"]}
summon marker 89 41 95 {Invulnerable:1b,Tags:["emperorHeartParticle","emperorHeart"]}
summon marker 92 41 98 {Invulnerable:1b,Tags:["emperorHeartParticle","emperorHeart"]}
summon marker 92 41 100 {Invulnerable:1b,Tags:["emperorHeartParticle","emperorHeart"]}

summon magma_cube 100 42.2 88 {Size:0.75,NoAI:1b,NoGravity:1b,Invulnerable:1b,Tags:["spectator","stalkerEyeMarker","noName"],ActiveEffects:[{Id:14,Duration:2147483647,Amplifier:1,ShowParticles:0b}]}
summon marker 100 41 88 {NoGravity:1b,Invulnerable:1b,Tags:["spectator","stalkerEyeMarker2"]}

summon interaction 88 41 99 {width:4,height:5,Tags:["spectator","emperorHeart","invulnerable"]}
summon item_display 88 45 99 {item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1634755910,-714325559,-1358273596,770959820],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTFjNTFiOTQ2Y2I0ODRiOWM3NmIyYzViZjVlYWIwYzc0YzljZWQ5NWYzNWFhODFlNjk5YmQ1ZDliNTdlMjBmIn19fQ=="}]}}}},item_display:"fixed",Glowing:1b,glow_color_override:14745855,interpolation_duration:20,interpolation_start:-1,transformation:[1.5000000000000004f,-0.4393398282201788f,2.560660171779821f,0f,1.5f,2.560660171779821f,-0.4393398282201788f,-1.5f,-2.1213203435596424f,1.5f,1.5000000000000004f,0f,0f,0f,0f,1f],shadow_radius:0f,shadow_strength:0f,Tags:["emperorHeart","bob","spectator"],brightness:{block:15,sky:15},CustomName:'[{"text": "﴾ ","color": "yellow"},{"text": "Emperor\'s Heart","color": "dark_purple"},{"text": " ﴿","color": "yellow"}]',CustomNameVisible:1b}
fill 87 41 98 89 44 100 barrier replace air
fill 98 41 101 102 57 97 air replace barrier
function sbremake:world/dreamworld/mercurius/attacks/worldborder/tick
scoreboard players set @e[tag=emperorHeart] health 1
scoreboard players set @e[tag=emperorHeart,type=interaction] life 5

execute in sbremake:dreamworld run setblock 88 41 99 purpur_slab