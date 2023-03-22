execute at @a[tag=inWitherCloak] run playsound minecraft:entity.creeper.hurt ambient @a ~ ~ ~ 1000000 1 1
execute if entity @a[tag=inWitherCloak] run schedule function sbremake:items/cloak/sound 20t